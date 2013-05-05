(define (new-unbuilt-procedure proc)
  (vector (make-cell) proc))
(define (procedure-cell fc) (vector-ref fc 0))
(define (procedure-proc fc) (vector-ref fc 1))

; todo: fix me, I'm a hack.
(define (unbuilt-procedure? proc)
  (if (and (vector? proc)
           (= (length proc) 2))
      #t
      #f))
