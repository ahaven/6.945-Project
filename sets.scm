;;; requires generics ;;;

(define (tagged-list? l tag)
  (and (pair? l)
       (equal? (car l) tag)))

;; Call to determine whether s is a set
(define (set? s) (tagged-list? s 'set))

;; Call with a list of elements to make them into a set, or just (set:make) will make an empty set
(define (set:make . args)
  (set:insert-list (list 'set) args))

;; Call with a set and list of elements to make the set that's the original set with all the elements added in 
(define (set:add set . args)
  (set:insert-list set args))

;; Call with a bunch of sets to get their union
(define (set:union . sets)
  (if (null? sets)
      (set:make)
      (set:insert-list (apply set:union (cdr sets)) (set:elements (car sets)))))

;; Call with two sets to get their intersection
(define (set:intersection set1 set2)
  (define (recursive-intersection lst1 lst2 intersect-so-far)
    (if (or (null? lst1) (null? lst2)) intersect-so-far
	(let ((first-element-compare (generic:compare (car lst1) (car lst2))))
	  (cond ((equal? 'same first-element-compare) 
		 (recursive-intersection (cdr lst1) (cdr lst2) 
					 (set:insert intersect-so-far (car lst1))))
		((equal? 'less first-element-compare)
		 (recursive-intersection (cdr lst1) lst2 intersect-so-far))
		((equal? 'greater first-element-compare)
		 (recursive-intersection lst1 (cdr lst2) intersect-so-far))))))
  (recursive-intersection (set:elements set1) (set:elements set2) (set:make)))

;; Call with a subset and superset to learn whether the subset is actually a subset of 
;; the superset
(define (set:subset? subset superset)
  (define (recursive-subset? sublist superlist)
    (if (null? sublist) #t
	(if (null? superlist) #f
	    (let ((first-element-compare (generic:compare (car sublist) (car superlist))))
	      (cond ((equal? 'same first-element-compare)
		     (recursive-subset? (cdr sublist) (cdr superlist)))
		    ((equal? 'less first-element-compare) #f)
		    ((equal? 'greater first-element-compare)
		     (recursive-subset? sublist (cdr superlist))))))))
  (recursive-subset? (set:elements subset) (set:elements superset)))

;; Call with a set to get its (sorted) list of elements
(define set:elements cdr)

;; Helper; adds a single element into a set
(define (set:insert set element)
  (define (insert-sorted lst element)
    (cond ((null? lst) (list element))
	  ((same? element (car lst)) lst)
	  ((less? element (car lst)) (cons element lst))
	  (else (cons (car lst) (insert-sorted (cdr lst) element)))))
  (cons 'set (insert-sorted (set:elements set) element)))

;; Helper; adds a list of elements into a set 
(define (set:insert-list set elements)
  (if (null? elements)
      set
      (set:insert (set:insert-list set (cdr elements)) (car elements))))

;;; sets are sorted in lexicographic order
;;; symbol < list; other possibilities ignored for now
;;; lists are compared by their first element and then their second and so forth,
;;; '(a b) is less than '(a b c) 
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

