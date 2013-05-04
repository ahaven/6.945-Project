(define (new-procedure-cell proc)
  (vector (make-cell) proc))
(define (get-procedure-cell fc) (vector-ref fc 0))
(define (get-procedure-proc fc) (vector-ref fc 1))

; todo: fix me, I'm a hack.
(define (procedure-cell? proc-cell)
  (if (and (vector? proc-cell)
           (= (length proc-cell) 2))
      #t
      #f))
