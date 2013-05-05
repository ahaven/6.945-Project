;;;---------------- Eval ----------------
;;; Type evaluator/inferencer

(define (default-type-eval expression environment)
  (cond ((application? expression)
         (type-apply (type-eval (operator expression) environment)
                     (operands expression)
                     environment))
        (else
          (error "Unknown expression type" expression))))

(define type-eval
  (make-generic-operator 2 'type-eval default-type-eval))

(defhandler type-eval
  (lambda (expr env)
    ;(pp (list 'self-evaluating-build expr))
    (cond ((number? expr) (e:constant type:number))
          ((eq? expr #t) (e:constant type:true))
          ((eq? expr #f) (e:constant type:false))
          ((string? expr) (e:constant type:string))
          (else (error "not known self-evaluating type"))))
  self-evaluating? any?)

(defhandler type-eval
  (lambda (expr env) type:symbol)
  quoted? any?)
 
(defhandler type-eval
	(lambda (expr env)
		(lookup-variable-type expr env))
	symbol? any?)

(define (type-eval-sequence expr env)
  (cond ((no-more-exps? expr) (e:constant (type:none)))
        ((last-exp? expr) (type-eval (first-exp expr) env))
        (else 
			(begin (type-eval (first-exp expr) env)
				   (type-eval-sequence (rest-exps expr) env)))))

(defhandler type-eval
  (lambda (expr env)
    (type-eval-sequence (begin-actions expr) env))
  begin? any?)

(defhandler type-eval
  (lambda (expr env)
    (type-eval (let->combination expr) env))
  let? any?)
  
(defhandler type-eval
  (lambda (expr env)
	(begin (define-variable-type! (definition-variable expr) (type-eval (definition-value expr) env) env)
		   (e:constant type:symbol)))
  definition? any?)
	

;; Naive version of if, not specializing cases where the predicate
;; is always true or always false
(defhandler type-eval
  (lambda (expr env)
    ;(pp (list 'if-build expr))
    (let ((predicate (type-eval (if-predicate expr) env))
          (consequent (type-eval (if-consequent expr) env))
          (alternative (type-eval (if-alternative expr) env)))
      (c:type<= predicate (e:constant type:boolean))
      (ce:type-union consequent alternative)))
  if? any?)

(defhandler type-eval
  (lambda (expression environment)
    (type-eval (cond->if expression) environment))
  cond? any?)

(defhandler type-eval
  (lambda (expression environment)
    (type-eval (make-compound-procedure
                (lambda-parameters expression)
                (lambda-body expression)
                environment) ; extended with this lambda maybe?
               environment))
  lambda? any?)

(defhandler type-eval
  (lambda (expression environment)
    (new-function-cell expression environment))
  compound-expression? any?)

(define (type-eval-procedure f)
  (let ((output-cell (procedure-cell f))
        (proc (procedure-proc f)))
    ; TODO: switch on whether this type has already been calculated
    ; as is, we just duplicate the constraints if we call this again
    (let* ((vars (procedure-parameters proc))
           (bproc (procedure-body proc))
           (env (procedure-environment proc))
           (var-cells (map vars (lambda (var) (make-cell))))
           (newenv (extend-environment
                    vars
                    (map vars (lambda (var) '()))
                    var-cells
                    env)))
      (p:cons (e:constant var-cells) ; inputs
              (type-eval-sequence bproc newenv) ; output
              output-cell))))

;;;---------------- Apply ----------------

(define (default-type-apply procedure operands calling-environment)
  (error "Unknown procedure type" procedure))

(define type-apply
  (make-generic-operator 2 'type-apply default-type-apply))

(defhandler type-apply
  (lambda (procedure-cell operand-cells calling-environment)
    (if (not (= (length (procedure-parameters 
                          (get-procedure-proc procedure-cell)))
                (length operand-cells)))
      (error "Wrong number of operands supplied"))
    (let ((arguments
           (map (lambda (parameter-name operand)
                  (type-eval-operand parameter-name
                                     operand
                                     calling-environment))
                (procedure-parameters
                  (get-procedure-proc procedure-cell))
                operand-cells)))
      (type-eval-procedure procedure-cell)
      ; tie inputs
      ; tie output
    ))
  procedure-cell? any? any?)


;; this needs to be the default, not a separate case.
;; (defhandler type-eval
;;   (lambda (expr env)
;;     (pp (list 'application expr))
;;     (let-cell out
;;       (let ((opcell (type-eval (operator expr) env))
;;             (argcells (map (lambda (exp) (type-eval exp env))
;;                            (operands expr))))
;;         ; step 1. divide up function
;;         ; step 2. ?????
;;         ; step 3. profit!
;;         out)))
;;   application? any?)
