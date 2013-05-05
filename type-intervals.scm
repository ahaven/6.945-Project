
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

;; Merge two intervals to their common union
(define (type:interval-merge i1 i2)
  (type:make-interval
   (type:union (type:interval-low i1) (type:interval-low i2))
   (type:intersection (type:interval-high i1) (type:interval-high i2))))

;; Merge two intervals, returning a single type if the union contains
;; one single type.
(define (type:interval-merge-simplify i1 i2)
  (let ((merged (type:interval-merge i1 i2)))
    (if (type:= (type:interval-low merged) (type:interval-high merged))
        (type:interval-low merged)
        merged)))

(define (type:interval-contradictory? i)
  (not (type:<= (type:interval-low i) (type:interval-high i))))

(define-method write-instance
  ((instance <type-interval>) (port <object>))
    (write (list 'type-interval
                 (type:->symbols (type:interval-low instance))
                 (type:->symbols (type:interval-high instance)))
           port))

;;; Handlers for using type intervals as a partial information structure

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

;; Returns a type interval for all types having the given type
;; or type interval as a lower bound
(define (type-lower-bound t)
  (type:make-interval
   (cond ((type? t) t)
         ((type-interval? t) (type:interval-low t))
         (else (error "type-lower-bound of something not a type")))
   type:any))

;; Returns a type interval for all types having the given type
;; or type interval as an upper bound
(define (type-upper-bound t)
  (type:make-interval
   type:none
   (cond ((type? t) t)
         ((type-interval? t) (type:interval-high t))
         (else (error "type-upper-bound of something not a type")))))

(propagatify type-lower-bound)
(propagatify type-upper-bound)

;; Type lower bound constraint
(define-propagator (c:type<= t1 t2)
  (p:type-lower-bound t1 t2)
  (p:type-upper-bound t2 t1))

(propagatify type:binary-union)
(propagatify type:binary-intersection)

(define-propagator (c:type-union t1 t2 out)
  (p:type:binary-union t1 t2 out)
  (p:type-upper-bound out t1)
  (p:type-upper-bound out t2))

; assumes that t1 and t2 contain lists that are the same length
(define-propagator (c:for-each propagator t1 t2)
  (p:unless (t1 t2 propagator) (e:null? t1)
    (propagator (e:car t1) (e:car t2))
    (c:for-each propagator (e:cdr t1) (e:cdr t2))))
    

;; 
;(define (type-function-output-bound t))

;(define-propagator (c:function-output f out)
;  (p:
  
