
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'eq?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:any type:any type:boolean)))
  (eq-primitive? 'eq?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'equal?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:any type:any type:boolean)))
  (eq-primitive? 'equal?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'eqv?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:any type:any type:boolean)))
  (eq-primitive? 'eqv?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'number?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:any type:boolean)))
  (eq-primitive? 'number?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? '=) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number type:number)))
  (eq-primitive? '=)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? '<) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number type:number)))
  (eq-primitive? '<)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? '>) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number type:number)))
  (eq-primitive? '>)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? '<=) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number type:number)))
  (eq-primitive? '<=)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? '>=) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number type:number)))
  (eq-primitive? '>=)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'zero?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:boolean)))
  (eq-primitive? 'zero?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'positive?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:boolean)))
  (eq-primitive? 'positive?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'negative?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:boolean)))
  (eq-primitive? 'negative?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'odd?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:boolean)))
  (eq-primitive? 'odd?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'even?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:boolean)))
  (eq-primitive? 'even?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? '+) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number type:number)))
  (eq-primitive? '+)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? '-) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number type:number)))
  (eq-primitive? '-)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? '/) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number type:number)))
  (eq-primitive? '/)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? '*) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number type:number)))
  (eq-primitive? '*)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? '1+) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? '1+)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'max) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number type:number)))
  (eq-primitive? 'max)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'min) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number type:number)))
  (eq-primitive? 'min)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'abs) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'abs)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'numerator) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'numerator)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'denominator) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'denominator)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'floor) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'floor)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'ceiling) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'ceiling)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'truncate) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'truncate)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'round) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'round)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'floor->exact) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'floor->exact)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'ceiling->exact) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'ceiling->exact)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'truncate->exact) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'truncate->exact)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'round->exact) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'round->exact)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'simplest-rational) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'simplest-rational)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'simplest-exact-rational) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'simplest-exact-rational)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'exp) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'exp)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'log) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'log)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'sin) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'sin)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'cos) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'cos)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'tan) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'tan)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'asin) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'asin)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'acos) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'acos)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'atan) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'atan)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'atan) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'atan)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'sqrt) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number)))
  (eq-primitive? 'sqrt)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'expt) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:number type:number)))
  (eq-primitive? 'expt)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'number->string) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:string)))
  (eq-primitive? 'number->string)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string->number) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number)))
  (eq-primitive? 'string->number)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'random) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number )))
  (eq-primitive? 'random)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'char->name) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:char type:string)))
  (eq-primitive? 'char->name)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'name->char) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:char)))
  (eq-primitive? 'name->char)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'char=?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:char type:char type:boolean)))
  (eq-primitive? 'char=?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'char<?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:char type:char type:boolean)))
  (eq-primitive? 'char<?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'char>?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:char type:char type:boolean)))
  (eq-primitive? 'char>?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'char<=?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:char type:char type:boolean)))
  (eq-primitive? 'char<=?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'char>=?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:char type:char type:boolean)))
  (eq-primitive? 'char>=?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'char-ci=?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:char type:char type:boolean)))
  (eq-primitive? 'char-ci=?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'char-ci<?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:char type:char type:boolean)))
  (eq-primitive? 'char-ci<?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'char-ci<=?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:char type:char type:boolean)))
  (eq-primitive? 'char-ci<=?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'char-ci>=?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:char type:char type:boolean)))
  (eq-primitive? 'char-ci>=?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'char?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:char type:boolean)))
  (eq-primitive? 'char?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'char-upcase) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:char type:char)))
  (eq-primitive? 'char-upcase)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'char-downcase) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:char type:char)))
  (eq-primitive? 'char-downcase)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'char->digit) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:char type:number type:char)))
  (eq-primitive? 'char->digit)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'digit->char) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:digit type:char)))
  (eq-primitive? 'digit->char)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'make-string) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:number type:char type:string)))
  (eq-primitive? 'make-string)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:char type:char type:string)))
  (eq-primitive? 'string)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-copy) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string)))
  (eq-primitive? 'string-copy)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:any type:boolean)))
  (eq-primitive? 'string?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-length) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number)))
  (eq-primitive? 'string-length)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-ref) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:char)))
  (eq-primitive? 'string-ref)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-set!) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:char type:none)))
  (eq-primitive? 'string-set!)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string=?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:boolean)))
  (eq-primitive? 'string=?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring=?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:string type:number type:number type:boolean)))
  (eq-primitive? 'substring=?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-ci=?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:boolean)))
  (eq-primitive? 'string-ci=?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-ci=?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:string type:number type:number type:boolean)))
  (eq-primitive? 'substring-ci=?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string<?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:boolean)))
  (eq-primitive? 'string<?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring<?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:string type:number type:number type:boolean)))
  (eq-primitive? 'substring<?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string>?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:boolean)))
  (eq-primitive? 'string>?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string<=?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:boolean)))
  (eq-primitive? 'string<=?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string>=?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:boolean)))
  (eq-primitive? 'string>=?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-ci<?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:boolean)))
  (eq-primitive? 'string-ci<?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-ci<?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:string type:number type:number type:boolean)))
  (eq-primitive? 'substring-ci<?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-ci>?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:boolean)))
  (eq-primitive? 'string-ci>?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-ci<=?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:boolean)))
  (eq-primitive? 'string-ci<=?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-ci>=?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:boolean)))
  (eq-primitive? 'string-ci>=?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-hash) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number)))
  (eq-primitive? 'string-hash)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-hash-mod) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number)))
  (eq-primitive? 'string-hash-mod)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-capitalized?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:boolean)))
  (eq-primitive? 'string-capitalized?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-capitalized?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:boolean)))
  (eq-primitive? 'substring-capitalized?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-upper-case?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:boolean)))
  (eq-primitive? 'string-upper-case?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-upper-case?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:boolea)))
  (eq-primitive? 'substring-upper-case?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-lower-case?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:boolean)))
  (eq-primitive? 'string-lower-case?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-lower-case?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:boolean)))
  (eq-primitive? 'substring-lower-case?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-capitalize) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string)))
  (eq-primitive? 'string-capitalize)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-capitalize!) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:boolean)))
  (eq-primitive? 'string-capitalize!)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-capitalize!) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:boolean)))
  (eq-primitive? 'substring-capitalize!)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-downcase) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string)))
  (eq-primitive? 'string-downcase)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-downcase!) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:boolean)))
  (eq-primitive? 'string-downcase!)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-downcase!) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:boolean)))
  (eq-primitive? 'substring-downcase!)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-upcase) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string)))
  (eq-primitive? 'string-upcase)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-upcase!) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:boolean)))
  (eq-primitive? 'string-upcase!)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-upcase!) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:boolean)))
  (eq-primitive? 'substring-upcase!)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-append) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:string)))
  (eq-primitive? 'string-append)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:string)))
  (eq-primitive? 'substring)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-head) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:string)))
  (eq-primitive? 'string-head)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-tail) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:string)))
  (eq-primitive? 'string-tail)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-pad-left) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:char type:string)))
  (eq-primitive? 'string-pad-left)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-trim) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:char-set type:string)))
  (eq-primitive? 'string-trim)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-trim-left) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:char-set type:string)))
  (eq-primitive? 'string-trim-left)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-trim-right) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:char-set type:string)))
  (eq-primitive? 'string-trim-right)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-search-forward) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:number type:false)))
  (eq-primitive? 'string-search-forward)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-search-forward) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:number type:number type:number type:false)))
  (eq-primitive? 'substring-search-forward)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-search-backward) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:number type:false)))
  (eq-primitive? 'string-search-backward)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-search-backward) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:number type:number type:number type:false)))
  (eq-primitive? 'substring-search-backward)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:boolean)))
  (eq-primitive? 'substring?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-find-next-char) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:char type:number type:false)))
  (eq-primitive? 'string-find-next-char)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-find-next-char) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:char type:number type:false)))
  (eq-primitive? 'substring-find-next-char)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-find-next-char-ci) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:char type:number type:false)))
  (eq-primitive? 'string-find-next-char-ci)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-find-next-char-ci) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:char type:number type:false)))
  (eq-primitive? 'substring-find-next-char-ci)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-find-next-char-in-set) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:char-set type:number type:false)))
  (eq-primitive? 'string-find-next-char-in-set)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-find-next-char-in-set) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:char-set type:number type:false)))
  (eq-primitive? 'substring-find-next-char-in-set)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-find-previous-char) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:char type:number type:false)))
  (eq-primitive? 'string-find-previous-char)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-find-previous-char) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:char type:number type:false)))
  (eq-primitive? 'substring-find-previous-char)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-find-previous-char-ci) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:char type:number type:false)))
  (eq-primitive? 'string-find-previous-char-ci)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-find-previous-char-ci) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:char type:number type:false)))
  (eq-primitive? 'substring-find-previous-char-ci)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-find-previous-char-in-set) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:char-set type:number type:false)))
  (eq-primitive? 'string-find-previous-char-in-set)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-find-previous-char-in-set) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:char-set type:number type:false)))
  (eq-primitive? 'substring-find-previous-char-in-set)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-match-forward) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:number)))
  (eq-primitive? 'string-match-forward)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-match-forward) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:string type:number type:number type:number)))
  (eq-primitive? 'substring-match-forward)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-match-forward-ci) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:number)))
  (eq-primitive? 'string-match-forward-ci)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-match-forward-ci) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:string type:number type:number type:number)))
  (eq-primitive? 'substring-match-forward-ci)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-match-backward) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:number)))
  (eq-primitive? 'string-match-backward)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-match-backward) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:string type:number type:number type:number)))
  (eq-primitive? 'substring-match-backward)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-match-backward-ci) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:number)))
  (eq-primitive? 'string-match-backward-ci)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-match-backward-ci) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:string type:number type:number type:number)))
  (eq-primitive? 'substring-match-backward-ci)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-prefix?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:boolean)))
  (eq-primitive? 'string-prefix?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-prefix?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:string type:number type:number type:boolean)))
  (eq-primitive? 'substring-prefix?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-prefix-ci?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:boolean)))
  (eq-primitive? 'string-prefix-ci?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-prefix-ci?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:string type:number type:number type:boolean)))
  (eq-primitive? 'substring-prefix-ci?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-suffix?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:boolean)))
  (eq-primitive? 'string-suffix?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-suffix?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:string type:number type:number type:boolean)))
  (eq-primitive? 'substring-suffix?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-suffix-ci?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string type:boolean)))
  (eq-primitive? 'string-suffix-ci?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-suffix-ci?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:string type:number type:number type:boolean)))
  (eq-primitive? 'substring-suffix-ci?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string-replace) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:char type:char type:string)))
  (eq-primitive? 'string-replace)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'substring-replace) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:char type:char type:string)))
  (eq-primitive? 'substring-replace)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'reverse-string) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:string)))
  (eq-primitive? 'reverse-string)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'reverse-substring) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:number type:number type:string)))
  (eq-primitive? 'reverse-substring)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'boolean?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:any type:boolean)))
  (eq-primitive? 'boolean?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'not) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:any type:boolean)))
  (eq-primitive? 'not)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'false?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:any type:boolean)))
  (eq-primitive? 'false?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'boolean=?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:boolean type:boolean type:boolean)))
  (eq-primitive? 'boolean=?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'boolean/and) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:any type:boolean)))
  (eq-primitive? 'boolean/and)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'boolean/or) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:any type:boolean)))
  (eq-primitive? 'boolean/or)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'symbol?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:any type:boolean)))
  (eq-primitive? 'symbol?)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'symbol->string) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:symbol type:string)))
  (eq-primitive? 'symbol->string)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'string->symbol) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:string type:symbol)))
  (eq-primitive? 'string->symbol)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'symbol-append) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:symbol type:symbol)))
  (eq-primitive? 'symbol-append)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'symbol-hash) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:symbol type:number)))
  (eq-primitive? 'symbol-hash)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'symbol-hash-mod) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:symbol type:number type:number)))
  (eq-primitive? 'symbol-hash-mod)) 
        
; this here is totally wrong because you should look it up as a func first
(defhandler build-type-cell
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? 'symbol<?) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> type:symbol type:symbol type:boolean)))
  (eq-primitive? 'symbol<?)) 
        