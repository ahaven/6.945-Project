;;; requires generics ;;;

;; Call with a list of elements to make them into a set, or just (set:make) will make an empty set
(define (set:make . args)
  (set:insert-list (list 'set) args))

;; Call with a set and list of elements to make the set that's the original set with all the elements added in 
(define (set:add set . args)
  (set:insert-list set args))

;; Helper; adds a single element into a set
(define (set:insert set element)
  (cons 'set (insert-sorted (cdr set) element)))

;; Helper; puts an element to be inserted in its correct sorted place in a sorted list
(define (insert-sorted lst element)
  (cond ((null? lst) (list element))
	((same? element (car lst)) lst)
	((less? element (car lst)) (cons element lst))
	(else (cons (car lst) (insert-sorted (cdr lst) element)))))

;; Helper; adds a list of elements into a set 
(define (set:insert-list set elements)
  (if (null? elements)
      set
      (set:insert (set:insert-list set (cdr elements)) (car elements))))

;;; sets are sorted in lexicographic order
;;; symbol < list; other possibilities ignored for now
;;; lists are sorted by their first element and then their second and so forth 
(define (less? a b) (equal? (generic:compare a b) 'less))
(define (greater? a b) (equal? (generic:compare a b) 'greater))
(define (same? a b) (equal? (generic:compare a b) 'same))

(define (symbol-compare a b)
  (cond ((symbol<? a b) 'less)
	((symbol<? b a) 'greater)
	(else 'same)))

(define (list-compare a b)
  (if (null? a)
      (if (null? b)
	  'same    ;; both null
	  'less)    ;; a null, b has elements
      (if (null? b)
	  'greater  ;; b null, a has elements
	  (let ((first-element-comparison (generic:compare (car a) (car b))))
	    (if (equal? first-element-comparison 'same)
		(list-compare (cdr a) (cdr b))
		first-element-comparison)))))

(define generic:compare (make-generic-operator 2 'generic:compare (lambda (a b) 'incomparable)))
(defhandler generic:compare (lambda (a b) 'less) symbol? list?)
(defhandler generic:compare (lambda (a b) 'greater) list? symbol?)
(defhandler generic:compare symbol-compare symbol? symbol?)
(defhandler generic:compare list-compare list? list?)

