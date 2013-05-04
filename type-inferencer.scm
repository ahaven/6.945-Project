;;; Type evaluator/inferencer

(define type-eval
  (make-generic-operator
   2 'type-eval
   (lambda (expression environment)
     (error "type-eval not implemented" expression))))

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

(define (type-eval-sequence expr env)
  (cond ((no-more-exps? expr) (e:constant (type:none)))
        ((last-exp? expr) (type-eval (first-exp expr) env))
        (else ; TODO: consider environment changes (from, e.g., set! and define)
         (type-eval-sequence (rest-exps expr) env))))

(defhandler type-eval
  (lambda (expr env)
    (type-eval-sequence (begin-actions expr) env))
  begin? any?)

(defhandler type-eval
  (lambda (expr env)
    (type-eval (let->combination expr) env))
  let? any?)

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
