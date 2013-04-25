;;; Type evaluator/inferencer

(define build-type-cell
  (make-generic-operator 2 'build-type-cell
    (lambda () (error "build-type-cell not implemented"))))
