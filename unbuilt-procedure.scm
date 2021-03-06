(define (new-unbuilt-procedure proc)
  (vector 'unbuilt-procedure (make-cell) proc #f))
(define (procedure-cell fc) (vector-ref fc 1))
(define (procedure-proc fc) (vector-ref fc 2))
(define (procedure-built? fc) (vector-ref fc 3))
(define (procedure-building! fc) (vector-set! fc 3 #t))
; Theoretically, this should be atomic
(define (procedure-unbuild! fc)
  (vector-set! fc 1 (make-cell))
  (vector-set! fc 3 #f))

(define (unbuilt-procedure? proc)
  (and (vector? proc)
       (= (vector-length proc) 4)
       (eq? (vector-ref proc 0) 'unbuilt-procedure)))


(define (new-built-response output-cell unbuild-if-outermost)
  (cons output-cell unbuild-if-outermost))
(define (output-cell response) (car response))
(define (unbuild-if-outermost response) (cdr response))
