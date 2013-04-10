(define (tagged-list? l tag)
  (and (pair? l)
       (= (car l) tag)))

(define (type? t)
  (tagged-list? t 'type))

;; Make a type representing one or more primitive types
(define (type:make . symbols)
  (if (there-exists? (lambda (s) (not (symbol? s))) symbols)
      (error "Can't make a primitive type out of non-symbol" symbols))
  `(type ,(apply set:make symbols)))

(define (type-symbols type)
  (cadr type))

;; Make a type representing a function
;; Requires inputs to be a list of types and output to be a type
(define (type:function inputs output)
  (if (there-exists? (lambda (t) (not (type? t))) inputs)
      (error ("Function input type that isn't a type" inputs)))
  (if (not (type? output))
      (error ("Function output type that isn't a type" output)))
  `(type (function ,inputs ,output)))

(define (input-types function-type)
  (cadadr function-type))

(define (output-type function-type)
  (caddr (cadr function-type)))

;; Predicate for types representing functions
(define (function-type? t)
  (and (type? t)
       (tagged-list? (cadr t) 'function)))

;; Equality between types
(define type:= equal?)

;; Type that is the upper bound of all types
(define type:any '(type any))
(define (type:any? t) (type:= t type:any))

;; Type that is the lower bound of all types
(define type:none '(type (set:make)))
(define (type:none? t) (type:= t type:none))

;; The union of two types is the smallest type in our representation that
;; is an upper bound for both types.
(define type:binary-union
  (make-generic-operator 2 'type:binary-union
    (lambda (t1 t2) (error "Can't union non-types"))))

(defhandler type:binary-union
  (lambda (t1 t2)
    (type:make (set:union (type-symbols t1)
                          (type-symbols t2))))
  type?
  type?)

(defhandler type:binary-union
  (lambda (t1 t2)
    (type:function (map type:binary-intersection
                        (input-types t1)
                        (input-types t2))
                   (type:binary-union
                    (output-type t1)
                    (output-type t2))))
  function-type?
  function-type?)

(defhandler type:binary-union
  (lambda (t1 t2) type:any)
  function-type?
  (lambda (t) (and (type? t) (not (function-type? t)))))

(defhandler type:binary-union
  (lambda (t1 t2) type:any)
  (lambda (t) (and (type? t) (not (function-type? t))))
  function-type?)

(defhandler type:binary-union
  (lambda (t1 t2) type:any)
  type:any?
  any?)

(defhandler type:binary-union
  (lambda (t1 t2) type:any)
  any?
  type:any?)

(defhandler type:binary-union
  (lambda (t1 t2) t2)
  type:none?
  any?)

(defhandler type:binary-union
  (lambda (t1 t2) t1)
  any?
  type:none?)
     
(define (type:union . types)
  (reduce type:binary-union none types))

(define type:binary-intersection
  (make-generic-operator 2 'type:binary-intersection
    (lambda (t1 t2) (error "Can't intersect non-types"))))

(defhandler type:binary-intersection
  (lambda (t1 t2)
    (type:make (set:intersection (type-symbols t1)
                                 (type-symbols t2))))
  type?
  type?)

(defhandler type:binary-intersection
  (lambda (t1 t2)
    (type:function (map type:binary-union
                        (input-types t1)
                        (input-types t2))
                   (type:binary-intersection
                    (output-type t1)
                    (output-type t2))))
  function-type?
  function-type?)

(defhandler type:binary-intersection
  (lambda (t1 t2) type:none)
  function-type?
  (lambda (t) (and (type? t) (not (function-type? t)))))

(defhandler type:binary-intersection
  (lambda (t1 t2) type:none)
  (lambda (t) (and (type? t) (not (function-type? t))))
  function-type?)

(defhandler type:binary-intersection
  (lambda (t1 t2) t2)
  type:any?
  any?)

(defhandler type:binary-intersection
  (lambda (t1 t2) t1)
  any?
  type:any?)

(defhandler type:binary-intersection
  (lambda (t1 t2) type:none)
  type:none?
  any?)

(defhandler type:binary-intersection
  (lambda (t1 t2) type:none)
  any?
  type:none?)

(define (type:intersection . types)
  (reduce type:binary-intersection any types))

(define type-of
  (make-generic-operator 1 'type-of
    (lambda (exp) type:any)))

;; Primitive types
(defhandler type-of
  (lambda (exp) (type:make 'number))
  number?)

(defhandler type-of
  (lambda (exp) (type:make 'symbol))
  symbol?)

(defhandler type-of
  (lambda (exp) (type:make 'string))
  string?)

