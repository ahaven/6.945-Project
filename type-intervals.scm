
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

;; Merge two intervals to their common intersection
(define (type:interval-merge i1 i2)
  (type:make-interval
   (type:union (type:interval-low i1) (type:interval-low i2))
   (type:intersection (type:interval-high i1) (type:interval-high i2))))

;; Merge two intervals, returning a single type if the intersection contains
;; one single type.
(define (type:interval-merge-simplify i1 i2)
  (let ((merged (type:interval-merge i1 i2)))
    (if (type:= (type:interval-low merged) (type:interval-high merged))
        (type:interval-low merged)
        merged)))

;; Extend two intervals to their total union
(define (type:interval-extend i1 i2)
  (type:make-interval
   (type:intersection (type:interval-low i1) (type:interval-low i2))
   (type:union (type:interval-high i1) (type:interval-high i2))))

;; Extend two intervals, returning a single type if the union contains
;; one single type.
(define (type:interval-extend-simplify i1 i2)
  (let ((extended (type:interval-extend i1 i2)))
    (if (type:= (type:interval-low extended) (type:interval-high extended))
        (type:interval-low extended)
        extended)))

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


(define-generic type:variable-name (object))
(define-generic type:variable-cell (object))
(define-class (<type-variable> (constructor (name cell))) ()
  (name accessor type:variable-name)
  (cell accessor type:variable-cell))

(define (list-stream-append list stream)
  (if (null? list)
      stream
      (cons-stream (car list) (list-stream-append (cdr list) stream))))
(define (numbers-from n) (cons-stream n (numbers-from (+ n 1))))
(define type-names
  (list-stream-append
   (map symbol (list-head (char-set-members char-set:upper-case) 26))
   (stream-map (lambda (n) (symbol "T" n)) (numbers-from 0))))
(define (make-new-type-variable-name)
  (let ((name (stream-car type-names)))
    (set! type-names (stream-cdr type-names))
    name))  

(define (type:make-variable)
  (make-type-variable (make-new-type-variable-name) (make-cell)))

(define (type:variable? t) (subclass? (object-class t) <type-variable>))
(declare-type-tester type:variable? <type-variable>)

(define-method write-instance
  ((instance <type-variable>) (port <object>))
    (write (list (type:variable-name instance)
                 'restrictions
                 (content (type:variable-cell instance)))
           port))

(define (type:variable-merge v1 v2)
  (if (symbol<? (type:variable-name v2) (type:variable-name v1))
      (type:variable-merge v2 v1)
      (begin
        (p:id (type:variable-cell v2) (type:variable-cell v1))
        v1)))

(defhandler merge type:variable-merge type:variable? type:variable?)

(define (type:variable-merge-value var val)
  (add-content (type:variable-cell var) val)
  var)

(defhandler merge (binary-flip type:variable-merge-value) type? type:variable?)
(defhandler merge (binary-flip type:variable-merge-value) type:interval? type:variable?)
(defhandler merge type:variable-merge-value type:variable? type?)
(defhandler merge type:variable-merge-value type:variable? type:interval?)

(defhandler equivalent?
  (lambda (x y) (eq? (type:variable-name x)
                     (type:variable-name y)))
  type:variable? type:variable?)

(defhandler contradictory?
  (lambda (x) (contradictory? (type:variable-cell x)))
  type:variable?)

(define (type-lower-bound-of t)
  (cond ((type? t) t)
        ((type-interval? t) (type:interval-low t))
        ((type:variable? t)
         (if (nothing? (content (type:variable-cell t)))
             (type:make (type:variable-name t))
             (type-lower-bound-of (content (type:variable-cell t)))))
        (else type:none)))

(define (type-upper-bound-of t)
  (cond ((type? t) t)
        ((type-interval? t) (type:interval-high t))
        ((type:variable? t)
         (if (nothing? (content (type:variable-cell t)))
             (type:make (type:variable-name t))
             (type-upper-bound-of (content (type:variable-cell t)))))
        (else type:any)))

;; Returns a type interval for all types having the given type
;; or type interval as a lower bound
(define (type-lower-bound t)
  (type:make-interval
   (cond ((type? t) t)
         ((type-interval? t) (type:interval-low t))
         ((type-variable? t) (type-lower-bound-of (content (type:variable-cell t))))
         (else (error "type-lower-bound of something not a type")))
   type:any))

;; Returns a type interval for all types having the given type
;; or type interval as an upper bound
(define (type-upper-bound t)
  (type:make-interval
   type:none
   (cond ((type? t) t)
         ((type-interval? t) (type:interval-high t))
         ((type-variable? t) (type-upper-bound-of (content (type:variable-cell t))))
         (else (error "type-upper-bound of something not a type")))))

(propagatify type-lower-bound)
(propagatify type-upper-bound)

;; Type lower bound constraint
(define-propagator (c:type<= t1 t2)
  (p:type-lower-bound t1 t2)
  (p:type-upper-bound t2 t1))

(define (type:extended-union t1 t2)
  (if (type-variable? t1) (set! t1 (content (type:variable-cell t1))))
  (if (type-variable? t2) (set! t2 (content (type:variable-cell t2))))
  (if (type? t1) (set! t1 (type:make-interval t1 t1)))
  (if (type? t2) (set! t2 (type:make-interval t2 t2)))
  (if (or (not (type-interval? t1)) (not (type-interval? t2)))
      (error ("type:extended union of non-type argument")))
  (type:interval-extend-simplify t1 t2))

(propagatify type:binary-union)
(propagatify type:binary-intersection)
(propagatify type:extended-union)

(define-propagator (c:type-union t1 t2 out)
  (p:type:extended-union t1 t2 out)
  (p:type-upper-bound out t1)
  (p:type-upper-bound out t2))

(define-propagator (c:type-intersection t1 t2 out)
  (p:type:binary-intersection t1 t2 out)
  (p:type-lower-bound out t1)
  (p:type-lower-bound out t2))

; assumes that t1 and t2 contain lists that are the same length
(define-propagator (c:for-each-type<= t1 t2)
  (p:unless (t1 t2) (e:null? t1)
    (c:type<= (e:car t1) (e:car t2))
    (c:for-each-type<= (e:cdr t1) (e:cdr t2))))

(define-propagator (c:for-each-id t1 t2)
  (p:unless (t1 t2) (e:null? t1)
    (c:id (e:car t1) (e:car t2))
    (c:for-each-id (e:cdr t1) (e:cdr t2))))

(define (e:constant-list l)
  (if (null? l)
      (e:constant '())
      (e:cons (let ((val (car l)))
                (if (cell? val)
                    val
                    (e:constant (car l))))
              (e:constant-list (cdr l)))))

(define (cell-foreach proc cell-list)
  (let ((c (content cell-list)))
  (if (not (or (null? c) (nothing? c)))
      (begin (proc (car c))
             (cell-foreach proc (cdr c))))))

(define (cell-map proc cell)
  (let ((c (content cell)))
    (cond ((null? c) '())
          ((pair? c)
           (cons (proc (content (car c))) 
                 (cell-map proc (cdr c))))
          (else (proc c)))))

(propagatify type-lower-bound-of)
(propagatify type-upper-bound-of)

(define-propagator (c:type<=-tight-upper t1 t2)
  (p:type-lower-bound t1 t2)
  (p:type-upper-bound-of t2 t1))

(define-propagator (c:type<=-tight-lower t1 t2)
  (p:type-lower-bound-of t1 t2)
  (p:type-upper-bound t2 t1))
