(define (all? l) (reduce boolean/and #t l))

(define (type? t)
  (tagged-list? t 'type))

(define <type>
  (make-class '<type> '() '()))
(declare-type-tester type? <type>)

;; Make a type representing one or more primitive types
(define (type:make . symbols)
  (if (there-exists? symbols (lambda (s) (not (symbol? s))))
      (error "Can't make a primitive type out of non-symbol" symbols))
  `(type ,(apply set:make symbols)))

(define (type-symbols type)
  (cadr type))

;; Query whether this type is a set of primitive types
(define (primitive-type? type)
  (and (type? type) (set? (type-symbols type))))
(declare-explicit-guard primitive-type? (guard <type> primitive-type?))

;; Make a type representing a function
;; Requires inputs to be a list of types and output to be a type
(define (type:function inputs output)
  (if (there-exists? inputs (lambda (t) (not (type? t))))
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
(declare-explicit-guard function-type? (guard <type> function-type?))

;; Equality between types
(define type:= equal?)

;; Type that is the upper bound of all types
(define type:any '(type any))
(define (type:any? t) (type:= t type:any))
(declare-explicit-guard type:any? (guard <type> type:any?))

;; Type that is the lower bound of all types
(define type:none (list 'type (set:make)))
(define (type:none? t) (type:= t type:none))
(declare-explicit-guard type:none? (guard <type> type:none?))

;; This is a partial order on types
(define type:<=
  (make-generic-operator 2 'type:<=
    (lambda (t1 t2) #f)))

(defhandler type:<=
  (lambda (t1 t2)
    (set:subset? (type-symbols t1) (type-symbols t2)))
  primitive-type?
  primitive-type?)
   
(defhandler type:<=
  (lambda (t1 t2)
    (and (all? (map type:<= (input-types t2) (input-types t1)))
         (type:<= (output-type t1) (output-type t2))))
  function-type?
  function-type?)

(defhandler type:<=
  (lambda (t1 t2) #t)
  type:none?
  type?)

(defhandler type:<=
  (lambda (t1 t2) #t)
  type?
  type:any?)

;; The union of two types is the smallest type in our representation that
;; is an upper bound for both types (in the type:<= sense).
(define type:binary-union
  (make-generic-operator 2 'type:binary-union
    (lambda (t1 t2)
      (if (and (type? t1) (type? t2))
          type:any
          (error "Can't union non-types")))))

(defhandler type:binary-union
  (lambda (t1 t2)
    (list 'type (set:union (type-symbols t1)
			   (type-symbols t2))))
  primitive-type?
  primitive-type?)

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
  (lambda (t1 t2) t2)
  type:none?
  type?)

(defhandler type:binary-union
  (lambda (t1 t2) t1)
  type?
  type:none?)

;; Union of multiple types
(define (type:union . types)
  (reduce type:binary-union type:none types))

;; The intersection of two types is the greatest lower bound 
(define type:binary-intersection
  (make-generic-operator 2 'type:binary-intersection
    (lambda (t1 t2)
      (if (and (type? t1) (type? t2))
          type:none
          (error "Can't intersect non-types")))))

(defhandler type:binary-intersection
  (lambda (t1 t2)
    (list 'type (set:intersection (type-symbols t1)
				  (type-symbols t2))))
  primitive-type?
  primitive-type?)

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
  (lambda (t1 t2) t2)
  type:any?
  type?)

(defhandler type:binary-intersection
  (lambda (t1 t2) t1)
  type?
  type:any?)

;; Intersection of multiple types
(define (type:intersection . types)
  (reduce type:binary-intersection type:any types))

(define type-of
  (make-generic-operator 1 'type-of
    (lambda (exp) type:any)))

;; Some primitive types
(defhandler type-of
  (lambda (exp) (type:make 'number))
  number?)

(defhandler type-of
  (lambda (exp) (type:make 'symbol))
  symbol?)

(defhandler type-of
  (lambda (exp) (type:make 'string))
  string?)

;; We drill down and have two types representing boolean (t and f) because
;; of the common pattern of returning some value or #f
(defhandler type-of
  (lambda (exp)
    (if exp
        (type:make 'bool:t)
        (type:make 'bool:f)))
  boolean?)
;; The type of booleans is then the set of these two types
(define type:boolean (type:make 'bool:t 'bool:f))

;; Shorthand for writing function types. The last argument specified is
;; the function's return type. Symbolic arguments will be boxed into types
;; with type:make.
(define (-> . args)
  (if (null? args)
      type:none
      (let ((types
             (map (lambda (t)
                    (cond ((type? t) t)
                          ((symbol? t) (type:make t))
                          (else
                           (error "Don't know how to type-ify" t))))
                  args)))
        (type:function (except-last-pair types) (car (last-pair types))))))

