;;; Type evaluator/inferencer

(define build-type-cell
  (make-generic-operator
   2 'build-type-cell
   (lambda (expression environment)
     (error "build-type-cell not implemented"))))

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
  application?)
