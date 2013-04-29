(define (all? l) (reduce boolean/and #t l))

(define (type? t)
  (tagged-list? t 'type))

(define-class <type> ())
(define (type? t) (subclass? (object-class t) <type>))
(declare-type-tester type? <type>)

;; Type that is the lower bound of all types
(define-class (<none-type> (constructor ())) (<type>))
(define type:none (make-none-type))
(define (type:none? t) (eq? t type:none))
(declare-type-tester type:none? <none-type>)

;; Type that is the upper bound of all types
(define-class (<any-type> (constructor ())) (<type>))
(define type:any (make-any-type))
(define (type:any? t) (eq? t type:any))
(declare-type-tester type:any? <any-type>)

;; Make a type representing one or more primitive types
(define-generic type-symbols (object))
(define-class (<primitive-type> (constructor (symbols))) (<type>)
  (symbols accessor type-symbols))

(define (type:make . symbols)
  (if (there-exists? symbols (lambda (s) (not (symbol? s))))
      (error "Can't make a primitive type out of non-symbol" symbols))
  (if (null? symbols)
      type:none
      (make-primitive-type (apply set:make symbols))))

;; Query whether this type is a set of primitive types
(define (primitive-type? t) (subclass? (object-class t) <primitive-type>))
(declare-type-tester primitive-type? <primitive-type>) 

;; Make a type representing a function
;; Requires inputs to be a list of types and output to be a type
(define-generic input-types (object))
(define-generic output-type (object))
(define-class (<function-type> (constructor (inputs output))) (<type>)
  (inputs accessor input-types)
  (output accessor output-type))

(define (type:function inputs output)
  (if (there-exists? inputs (lambda (t) (not (type? t))))
      (error "Function input type that isn't a type" inputs))
  (if (not (type? output))
      (error "Function output type that isn't a type" output))
  (make-function-type inputs output))

;; Predicate for types representing functions
(define (function-type? t) (subclass? (object-class t) <function-type>))
(declare-type-tester function-type? <function-type>)

;; Equality between types
(define type:=
  (make-generic-operator 2 'type:= equal?))

(defhandler type:=
  (lambda (t1 t2) (equal? (type-symbols t1) (type-symbols t2)))
  primitive-type?
  primitive-type?)

(defhandler type:=
  (lambda (t1 t2) (and (all? (map type:= (input-types t1) (input-types t2)))
                       (type:= (output-type t1) (output-type t2))))
  function-type?
  function-type?)

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
    (and (= (length (input-types t1))
            (length (input-types t2)))
         (all? (map type:<= (input-types t2) (input-types t1)))
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
    (make-primitive-type
     (set:union (type-symbols t1)
                (type-symbols t2))))
  primitive-type?
  primitive-type?)

(defhandler type:binary-union
  (lambda (t1 t2)
    (if (= (length (input-types t1))
           (length (input-types t2)))
        (type:function (map type:binary-intersection
                            (input-types t1)
                            (input-types t2))
                       (type:binary-union
                        (output-type t1)
                        (output-type t2)))
        type:any))
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

;; note: empty intersection gives none-type rather than empty set
(defhandler type:binary-intersection
  (lambda (t1 t2)
    (let ((intersection (set:intersection (type-symbols t1)
                                          (type-symbols t2))))
      (if (null? (set:elements intersection))
          type:none
          (make-primitive-type intersection))))
  primitive-type?
  primitive-type?)

(defhandler type:binary-intersection
  (lambda (t1 t2)    
    (if (= (length (input-types t1))
           (length (input-types t2)))
        (type:function (map type:binary-union
                            (input-types t1)
                            (input-types t2))
                       (type:binary-intersection
                        (output-type t1)
                        (output-type t2)))
        type:none))
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
(define type:boolean (type:make 'true 'false))
(define type:number (type:make 'number))
(define type:false (type:make 'false))
(define type:true (type:make 'true))
(define type:string (type:make 'string))
(define type:char (type:make 'char))
(define type:symbol (type:make 'symbol))

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

;; pretty-printing for types
(define type:->symbols
  (make-generic-operator 1 'type:->symbols))

(defhandler type:->symbols
  (lambda (t)
    (let ((symbols (set:elements (type-symbols t))))
      (cond
       ((null? symbols) 'none)
       ((= (length symbols) 1) (car symbols))
       (else (cons '? symbols)))))
  primitive-type?)

(defhandler type:->symbols
  (lambda (t) `(,@(map type:->symbols (input-types t)) -> ,(type:->symbols (output-type t))))
  function-type?)

(defhandler type:->symbols (lambda (t) 'any) type:any?)
(defhandler type:->symbols (lambda (t) 'none) type:none?)

(define-method write-instance
  ((instance <type>) (port <object>))
    (write (type:->symbols instance) port))
