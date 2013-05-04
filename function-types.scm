(define-generic type:function-cell (object))
(define-generic type:function-proc (object))
(define-class (<function-cell> (constructor (cell proc))) ()
  (cell accessor type:function-cell)
  (proc accessor type:function-proc))

(define (new-function-cell proc) (make-function-cell (make-cell) proc))

(define (function-cell? t) (subclass? (object-class t) <function-cell>))
(declare-type-tester function-cell? <function-cell>)
