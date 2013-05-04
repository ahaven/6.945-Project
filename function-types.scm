(define (new-function-cell proc env)
  (vector (make-cell) proc env))
(define (function-cell fc) (vector-ref fc 0))
(define (function-proc fc) (vector-ref fc 1))
(define (function-env fc) (vector-ref fc 2))

;(define-generic type:function-cell (object))
;(define-generic type:function-proc (object))
;(define-generic type:function-env (object))
;(define-class (<function-cell> (constructor (cell proc env))) ()
;  (cell accessor type:function-cell)
;  (proc accessor type:function-proc)
;  (env accessor type:function-env))

;(define (new-function-cell proc env) (make-function-cell (make-cell) proc env))

;(define (function-cell? t) (subclass? (object-class t) <function-cell>))
;(declare-type-tester function-cell? <function-cell>)
