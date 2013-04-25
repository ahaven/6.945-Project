;;; TODO: this might not be where the expr is
(define (primitive-expression? expr)
  (strict-primitive-procedure? expr))

;;; TODO: needs rtdata from evaluator to be imported first for strict-primitive-procedure?
;;; TODO: In fact, I'm not entirely sure this is how expr works, but whatever.
(defhandler build-type-cell 
  (lambda (expr env)
    ;; really should just pull out proc name?
    (build-primitive-type-cell expr))
  primitive-expression?
  any?)

;;; Currently assumes you're passing in the actual function. Maybe it should be passed by symbol instead? So '+ instead of the proc +?
(define build-primitive-type-cell
  (make-generic-operator 1 'build-primitive-type-cell))

(define (eq-primitive? primitive)
  (lambda (p) (eq? primitive p)))

;;; TODO, may not want to keep creating new cells, but getting old cells instead since we're dealing with constants.
(define (get-primitive-cell alter-cell)
  (lambda (expr)
    (let ((prev-cell #f)) ; actually get prev-cell from somewhere maybe?
      (if prev-cell
          prev-cell
          (let ((cell (make-cell)))
            (alter-cell cell)
            cell)))))
