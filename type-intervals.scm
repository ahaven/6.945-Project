
(define-generic type:interval-low (object))
(define-generic type:interval-high (object))
(define-class (<type-interval> (constructor (low high))) ()
  (low accessor type:interval-low)
  (high accessor type:interval-high))

(define (type:make-interval t1 t2)
  (if (or (not (type? t1))
          (not (type? t2)))
      (error "type-interval requires types"))
  (make-type-interval t1 t2))

(define (type:interval? t) (subclass? (object-class t) <type-interval>))
(declare-type-tester type:interval? <type-interval>)

(define (type:interval-equal? i1 i2)
  (and (type:= (type:interval-low i1) (type:interval-low i2))
       (type:= (type:interval-high i1) (type:interval-high i2))))

(define (type:interval-merge i1 i2)
  (type:make-interval
   (type:union (type:interval-low i1) (type:interval-low i2))
   (type:intersection (type:interval-high i1) (type:interval-high i2))))

(define (type:interval-merge-simplify i1 i2)
  (let ((merged (type:interval-merge i1 i2)))
    (if (type:= (type:interval-low merged) (type:interval-high merged))
        (type:interval-low merged)
        merged)))

(define (type:interval-contradictory? i)
  (not (type:<= (type:interval-low i) (type:interval-high i))))

(define-method write-instance
  ((instance <type-interval>) (port <object>))
    (write `(type-interval ,(type:->symbols (type:interval-low instance))
                           ,(type:->symbols (type:interval-high instance)))
           port))

;;; Propagators containing types

(defhandler equivalent? type:interval-equal? type:interval? type:interval?)
(defhandler merge type:interval-merge-simplify type:interval? type:interval?)
(defhandler contradictory? type:interval-contradictory? type:interval?)

;;; Conversions between type and type-interval

(define (type=interval? type interval)
  (and (type:= type (type:interval-low interval))
       (type:= type (type:interval-high interval))))
(defhandler equivalent? type=interval? type? type:interval?)
(defhandler equivalent? (binary-flip type=interval?) type:interval? type?)

(define (type:in-interval type interval)
  (if (and (type:<= (type:interval-low interval) type)
           (type:<= type (type:interval-high interval)))
      type
      the-contradiction))
(defhandler merge type:in-interval type? type:interval?)
(defhandler merge (binary-flip type:in-interval) type:interval? type?)
