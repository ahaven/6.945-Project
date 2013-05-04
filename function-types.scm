(define (new-procedure-cell proc)
  (vector (make-cell) proc))
(define (procedure-cell fc) (vector-ref fc 0))
(define (procedure-proc fc) (vector-ref fc 1))
