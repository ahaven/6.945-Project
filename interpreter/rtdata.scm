;;; -*- Mode:Scheme -*- 

(declare (usual-integrations))

(define the-unspecified-value (list 'the-unspecified-value))

(define (true? x)
  (if x true false))

(define (false? x)
  (if x false true))

;;; Primitive procedures are inherited from Scheme.

(define strict-primitive-procedure? procedure?)
(define apply-primitive-procedure apply)


;;; Compound procedures
#|
More information on MIT scheme records at:
http://groups.csail.mit.edu/mac/projects/scheme/documentation/scheme_11.html#SEC110

(define-record-type <record-name>
    (<record-constructor> <fieldname0> ...)
    <predicate>
  (<fieldname0> <fieldname0-accessor>)
  ...)
|#

(define-record-type compound-procedure
    (make-compound-procedure vars bproc env)
    compound-procedure?
  (vars  procedure-parameters)
  (bproc procedure-body)
  (env   procedure-environment))

#|
 (define (make-compound-procedure vars bproc env)
   (vector 'compound-procedure vars bproc env))

 (define (compound-procedure? obj)
   (and (vector? obj)
	(eq? (vector-ref obj 0) 'compound-procedure)))

 (define (procedure-parameters p) (vector-ref p 1))
 (define (procedure-body p) (vector-ref p 2))
 (define (procedure-environment p) (vector-ref p 3))
|#

;;; An ENVIRONMENT is a chain of FRAMES, made of vectors.

(define (extend-environment variables values types base-environment)
  (if (fix:= (length variables) (length values) (length types))
      (vector variables values types base-environment)
      (error "Lengths of variable list, value list, and type list do not match" variables values types)))

(define (environment-variables env) (vector-ref env 0))
(define (environment-variables-set! env vars) (vector-set! env 0 vars))
(define (environment-values env) (vector-ref env 1))
(define (environment-values-set! env vals) (vector-set! env 1 vals))
(define (environment-types env) (vector-ref env 2))
(define (environment-types-set! env types) (vector-set! env 2 types))
(define (environment-parent env) (vector-ref env 3))

(define the-empty-environment (list '*the-empty-environment*))

(define (lookup-var var env should-get-value-as-opposed-to-type)
  (let plp ((env env))
    (if (eq? env the-empty-environment)
	(if should-get-value-as-opposed-to-type
	    (lookup-scheme-value var)
	    (error "can't find in environment to get its type:" var))
	(let scan
	    ((vars (environment-variables env))
	     (vals (if should-get-value-as-opposed-to-type (environment-values env) (environment-types env))))
	  (cond ((null? vars) (plp (environment-parent env)))
		((eq? var (car vars)) (car vals))
		(else (scan (cdr vars) (cdr vals))))))))

(define (lookup-variable-value var env)
  (lookup-var var env true))

(define (lookup-variable-type var env)
  (lookup-var var env false))

;;; Extension to make underlying Scheme values available to interpreter

(define (lookup-scheme-value var)
  (lexical-reference generic-evaluation-environment var))

(define (define-variable! var val env)
  (if (eq? env the-empty-environment)
      (error "Unbound variable -- DEFINE" var) ;should not happen.
      (let scan
	  ((vars (environment-variables env))
	   (vals (environment-values env))
	   (types (environment-types env)))
	(cond ((null? vars)
	       (environment-variables-set! env (cons var (environment-variables env)))
	       (environment-values-set! (cons val (environment-values env)))
	       (environment-types-set! (cons (build-type-cell val env) (environment-types env))))
	      ((eq? var (car vars))
	       (set-car! vals val)
	       (set-car! types (build-type-cell val env)))
	      (else
	       (scan (cdr vars) (cdr vals) (cdr types)))))))

; >>> This is a pretty dangerous function that allows for forcing the type in order to have primitives in the "global" environment. I don't really want to have O(n^2) time to introduce all of the primitive functions, so this does NOT check that the primitive function has already been defined.
(define (define-primitive-func! var val type env)
  (if (eq? env the-empty-environment)
      (error "Unbound variable -- DEFINE" var) ;should not happen.
      (begin
	(vector-set! env 0 (cons var (vector-ref env 0)))
	(vector-set! env 1 (cons val (vector-ref env 1)))
	(vector-set! env 2 (cons type (vector-ref env 2))))))

(define (set-variable-value! var val env)
  (let plp ((env env))
    (if (eq? env the-empty-environment)
	(error "Unbound variable -- SET!" var)
	(let scan
	    ((vars (environment-variables env))
	     (vals (environment-values env))
	     (types (environment-types env)))
	  (cond ((null? vars) (plp (environment-parent env)))
		((eq? var (car vars)) (set-car! vals val) (set-car! types (build-type-cell val env)))
		(else (scan (cdr vars) (cdr vals) (cdr types))))))))


