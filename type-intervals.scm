(define (type:make-interval t1 t2)
  `(type-interval ,t1 ,t2))

(define (type:interval? ti)
  (tagged-list? ti 'type-interval))

(define (type:interval-low ti) (cadr ti))
(define (type:interval-high ti) (caddr ti))

(define (type:interval-equal? i1 i2)
  (and (type:= (type:interval-low i1) (type:interval-low i2))
       (type:= (type:interval-high i1) (type:interval-high i2))))

(define (type:interval-merge i1 i2)
  (type:make-interval
   (type:union (type:interval-low i1) (type:interval-low i2))
   (type:intersection (type:interval-high i1) (type:interval-high i2))))

(define (type:interval-contradictory? i)
  (and (type:<= (type:interval-high i) (type:interval-low i))
       (not (type:= (type:interval-high i) (type:interval-low i)))))

;;; Propagators containing types

(defhandler equivalent? type:interval-equal? type:interval? type:interval?)
(defhandler merge type:interval-merge type:interval? type:interval?)
(defhandler contradictory? type:interval-contradictory? type:interval? type:interval?)
