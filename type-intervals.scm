(define (type:make-interval t1 t2)
  `(type-interval ,t1 ,t2))

(define (type:interval? ti)
  (tagged-list? ti 'type-interval))

(define (type:interval-low ti) (cadr ti))
(define (type:interval-high ti) (caddr ti))
