(load "load")
(init)

;;; Types of constants and predefined functions

(type-extract 3)
; number

(type-extract #t)
; true

(type-extract +)
; (number number -> number)

(type-extract <)
; (number number -> (? false true))

;;; Variables

(define x 4)
; x

(type-extract (+ 3 4))
; number

(type-extract (if (> x 3) #f 8))
; (type-interval none (? false number))

(define a "happy")
; a

(type-extract a)
; string

;;; Procedures

(define (id x) x)
; id

(type-extract id)
; (|A| -> |A|)

(type-extract (id 10))
; (type-interval number any)

(type-extract (id 'foo))
; (type-interval symbol any)

(define (f x) (+ x 3))
; f

(type-extract (f 4))
; number

(type-extract ((lambda (x) (+ x 3)) 4))
; number

;;; Recursive procedures

(define (fact n)
  (if (<= n 1)
      1
      (* n (fact (- n 1)))))
; fact

(type-extract fact)
; (number -> number)

(define (fib n)
  (if (<= n 2)
      1
      (+ (fib (- n 1)) (fib (- n 2)))))
; fib

(type-extract fib)
; (number -> number)
