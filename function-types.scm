(define (new-procedure-cell proc)
  (vector (make-cell) proc))
(define (get-procedure-cell fc) (vector-ref fc 0))
(define (get-procedure-proc fc) (vector-ref fc 1))
