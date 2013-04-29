;;; Type evaluator/inferencer

(define build-type-cell
  (make-generic-operator
   2 'build-type-cell
   (lambda (expression environment)
     (error "build-type-cell not implemented" expression))))

(defhandler build-type-cell
  (lambda (expr env)
    ;(pp (list 'self-evaluating-build expr))
    (cond ((number? expr) (e:constant type:number))
          ((eq? expr #t) (e:constant type:true))
          ((eq? expr #f) (e:constant type:false))
          ((string? expr) (e:constant type:string))
          (else (error "not known self-evaluating type"))))
  self-evaluating? any?)

(defhandler build-type-cell
  (lambda (expr env) type:symbol)
  quoted? any?)

(define (build-type-cell-sequence expr env)
  (cond ((no-more-exps? expr) (e:constant (type:none)))
        ((last-exp? expr) (build-type-cell (first-exp expr) env))
        (else ; TODO: consider environment changes (from, e.g., set! and define)
         (build-type-cell-sequence (rest-exps expr) env))))

(defhandler build-type-cell
  (lambda (expr env)
    (build-type-cell-sequence (begin-actions expr) env))
  begin? any?)

(defhandler build-type-cell
  (lambda (expr env)
    (build-type-cell (let->combination expr) env))
  let? any?)

;; this needs to be the default, not a separate case.
;; (defhandler build-type-cell
;;   (lambda (expr env)
;;     (pp (list 'application expr))
;;     (let-cell out
;;       (let ((opcell (build-type-cell (operator expr) env))
;;             (argcells (map (lambda (exp) (build-type-cell exp env))
;;                            (operands expr))))
;;         ; step 1. divide up function
;;         ; step 2. ?????
;;         ; step 3. profit!
;;         out)))
;;   application? any?)

;; Naive version of if, not specializing cases where the predicate
;; is always true or always false
(defhandler build-type-cell
  (lambda (expr env)
    ;(pp (list 'if-build expr))
    (let ((predicate (build-type-cell (if-predicate expr) env))
          (consequent (build-type-cell (if-consequent expr) env))
          (alternative (build-type-cell (if-alternative expr) env)))
      (c:type<= predicate (e:constant type:boolean))
      (ce:type-union consequent alternative)))
  if? any?)

(defhandler build-type-cell
  (lambda (expression environment)
    (build-type-cell (cond->if expression) environment))
  cond? any?)
