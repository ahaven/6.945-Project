(define (new-unbuilt-procedure proc)
  (vector 'unbuilt-procedure (make-cell) proc))
(define (procedure-cell fc) (vector-ref fc 1))
(define (procedure-proc fc) (vector-ref fc 2))

(define (unbuilt-procedure? proc)
  (and (vector? proc)
       (= (vector-ref proc 0))
       (= (vector-length proc) 3)))
