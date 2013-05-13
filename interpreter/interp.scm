;;; Core of extended Scheme interpreter
;;;
;;; See also structure and predicate definitions in rtdata.scm and
;;; syntax.scm

(declare (usual-integrations eval apply))

(define (default-eval expression environment)
  (cond ((application? expression)
         (apply (eval (operator expression) environment)
                (operands expression)
                environment))
        (else
         (error "Unknown expression type" expression))))

(define (default-apply procedure operands calling-environment)
  (error "Unknown procedure type" procedure))

(define eval
  (make-generic-operator 2 'eval default-eval))

(defhandler eval
  (lambda (expression environment) expression)
  self-evaluating? any?)

(defhandler eval lookup-variable-value variable? any?)

(defhandler eval
  (lambda (expression environment)
    (text-of-quotation expression))
  quoted? any?)

(defhandler eval
  (lambda (expression environment)
    (make-compound-procedure
     (lambda-parameters expression)
     (lambda-body expression)
     environment))
  lambda? any?)

(defhandler eval
  (lambda (expression environment)
    (if (eval (if-predicate expression) environment)
        (eval (if-consequent expression) environment)
        (eval (if-alternative expression) environment)))
  if? any?)

(defhandler eval
  (lambda (expression environment)
    (eval (cond->if expression) environment))
  cond? any?)

(defhandler eval
  (lambda (expression environment)
    (eval (let->combination expression) environment))
  let? any?)

(defhandler eval
  (lambda (expression environment)
    (evaluate-sequence (begin-actions expression)
                       environment))
  begin? any?)

(define (cell->type cell #!optional unwrap-variables?)
  (if (default-object? unwrap-variables?)
      (set! unwrap-variables? #t))
  (run)
  (if (unbuilt-procedure? cell)
      (let ((built-response (type-eval-procedure cell)))
        (set! cell (output-cell built-response))
        ((unbuild-if-outermost built-response))
        (cell->type cell))
      (let ((output (if (cell? cell) (content cell) cell)))
        (cond ((pair? output)
               (type:function
                (map type-upper-bound-of
                     (cell-map
                      (lambda (cell) (cell->type cell #f))
                      (car output)))
                (type-lower-bound-of (cell->type (cdr output) #f))))
              ((type:variable? output)
               (if unwrap-variables?
                   (cell->type (type:variable-cell output))
                   output))
              (else output)))))

(defhandler eval
  (lambda (expression environment)
    (cell->type (type-eval-sequence (type-exprs expression) environment)))
  type-extract? any?)

(define (evaluate-sequence actions environment)
  (cond ((null? actions)
         (error "Empty sequence"))
        ((null? (rest-exps actions))
         (eval (first-exp actions) environment))
        (else
         (eval (first-exp actions) environment)
         (evaluate-sequence (rest-exps actions) environment))))

(defhandler eval
  (lambda (expression environment)
    (define-variable! (definition-variable expression)
      (eval (definition-value expression) environment)
      environment)
    (definition-variable expression))
  definition? any?)

(defhandler eval
  (lambda (expression environment)
    (set-variable-value! (assignment-variable expression)
      (eval (assignment-value expression) environment)
      environment))
  assignment? any?)

(define apply
  (make-generic-operator 3 'apply default-apply))

;;; Original version bundled with pset
;(defhandler apply
;  (lambda (procedure operands calling-environment)
;    (define (evaluate-list operands)
;      (cond ((null? operands) '())
;           ((null? (rest-operands operands))
;            (list (eval (first-operand operands)
;                        calling-environment)))
;           (else
;            (cons (eval (first-operand operands)
;                        calling-environment)
;                  (evaluate-list (rest-operands operands))))))
;    (apply-primitive-procedure procedure
;      (evaluate-list operands)))
;  strict-primitive-procedure?)

;;; Casey's version that makes map work
(defhandler apply
  (lambda (procedure operands calling-environment)
    (define (giftwrapped x)
      (if (compound-procedure? x)
          (lambda (#!rest args) (apply x args calling-environment))
          x))
    (define (evaluate-list operands)
      (cond ((null? operands) '())
            ((null? (rest-operands operands))
             (list (giftwrapped (eval (first-operand operands)
                                      calling-environment))))
            (else
             (cons (giftwrapped (eval (first-operand operands)
                                      calling-environment))
                   (evaluate-list (rest-operands operands))))))
    (apply-primitive-procedure procedure
                               (evaluate-list operands)))
  strict-primitive-procedure? any? any?)

(defhandler apply
  (lambda (procedure operands calling-environment)
    (if (not (= (length (procedure-parameters procedure))
                (length operands)))
        (error "Wrong number of operands supplied"))
    (let ((arguments
           (map (lambda (parameter operand)
                  (evaluate-procedure-operand parameter
                                              operand
                                              calling-environment))
                (procedure-parameters procedure)
                operands)))
      (eval (procedure-body procedure)
            (extend-environment
              (map procedure-parameter-name
                   (procedure-parameters procedure))
              arguments
              (map (lambda (arg) 
                     (type-eval arg calling-environment))
                   arguments)
             (procedure-environment procedure)))))
  compound-procedure? any? any?)

(define evaluate-procedure-operand
  (make-generic-operator 3
                         'evaluate-operand
                         (lambda (parameter operand environment)
                           (eval operand environment))))

(define procedure-parameter-name
  (make-generic-operator 1 'parameter-name (lambda (x) x)))
