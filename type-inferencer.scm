;;; Type evaluator/inferencer

(define build-type-cell
  (make-generic-operator
   2 'build-type-cell
   (lambda (expression environment)
     (error "build-type-cell not implemented" expression))))

(defhandler build-type-cell
  (lambda (expr env)
    (pp (list 'self-evaluating-build expr))
    (cond ((number? expr) (e:constant type:number))
          ((eq? expr #t) (e:constant type:true))
          ((eq? expr #f) (e:constant type:false))
          ((string? expr) (e:constant type:string))
          (else (error "not known self-evaluating type"))))
  self-evaluating? any?)

;; Naive version of if, not specializing cases where the predicate
;; is always true or always false
(defhandler build-type-cell
  (lambda (expr env)
    (pp (list 'if-build expr))
    (let ((predicate (build-type-cell (if-predicate expr) env))
          (consequent (build-type-cell (if-consequent expr) env))
          (alternative (build-type-cell (if-alternative expr) env)))
      (c:type<= predicate (e:constant type:boolean))
      (let-cell out
        (c:type<= consequent out)
        (c:type<= alternative out)
        out)))
  if? any?)

(defhandler build-type-cell
  (lambda (expression environment)
    (build-type-cell (cond->if expression) environment))
  cond? any?)

(defhandler build-type-cell
  (lambda (expr env)
    (let-cell out
      (let ((opcell (build-type-cell (operator expr) env))
            (argcells (map (lambda (exp) (build-type-cell exp env))
                           (operands expr))))
        ; step 1. divide up function
        ; step 2. ?????
        ; step 3. profit!
        out)))
  application? any?)
