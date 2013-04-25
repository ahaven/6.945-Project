
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:any type:any type:boolean))))
  (eq-primitive? eq?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:any type:any type:boolean))))
  (eq-primitive? equal?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:any type:any type:boolean))))
  (eq-primitive? eqv?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:any type:boolean))))
  (eq-primitive? number?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number type:number))))
  (eq-primitive? =))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number type:number))))
  (eq-primitive? <))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number type:number))))
  (eq-primitive? >))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number type:number))))
  (eq-primitive? <=))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number type:number))))
  (eq-primitive? >=))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:boolean))))
  (eq-primitive? zero?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:boolean))))
  (eq-primitive? positive?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:boolean))))
  (eq-primitive? negative?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:boolean))))
  (eq-primitive? odd?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:boolean))))
  (eq-primitive? even?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number type:number))))
  (eq-primitive? +))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number type:number))))
  (eq-primitive? /))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number type:number))))
  (eq-primitive? *))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? 1+))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number type:number))))
  (eq-primitive? max))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number type:number))))
  (eq-primitive? min))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? abs))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? numerator))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? denominator))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? floor))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? ceiling))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? truncate))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? round))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? floor->exact))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? ceiling->exact))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? truncate->exact))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? round->exact))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? simplest-rational))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? simplest-exact-rational))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? exp))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? log))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? sin))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? cos))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? tan))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? asin))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? acos))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? atan))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? atan))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number))))
  (eq-primitive? sqrt))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:number type:number))))
  (eq-primitive? expt))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:string))))
  (eq-primitive? number->string))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number))))
  (eq-primitive? string->number))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number ))))
  (eq-primitive? random))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:char type:string))))
  (eq-primitive? char->name))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:char))))
  (eq-primitive? name->char))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:char type:char type:boolean))))
  (eq-primitive? char=?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:char type:char type:boolean))))
  (eq-primitive? char<?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:char type:char type:boolean))))
  (eq-primitive? char>?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:char type:char type:boolean))))
  (eq-primitive? char<=?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:char type:char type:boolean))))
  (eq-primitive? char>=?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:char type:char type:boolean))))
  (eq-primitive? char-ci=?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:char type:char type:boolean))))
  (eq-primitive? char-ci<?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:char type:char type:boolean))))
  (eq-primitive? char-ci<=?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:char type:char type:boolean))))
  (eq-primitive? char-ci>=?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:char type:boolean))))
  (eq-primitive? char?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:char type:char))))
  (eq-primitive? char-upcase))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:char type:char))))
  (eq-primitive? char-downcase))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:char type:number type:char))))
  (eq-primitive? char->digit))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:digit type:char))))
  (eq-primitive? digit->char))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:number type:char type:string))))
  (eq-primitive? make-string))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:char type:char type:string))))
  (eq-primitive? string))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string))))
  (eq-primitive? string-copy))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:any type:boolean))))
  (eq-primitive? string?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number))))
  (eq-primitive? string-length))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:char))))
  (eq-primitive? string-ref))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:char type:none))))
  (eq-primitive? string-set!))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:boolean))))
  (eq-primitive? string=?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:string type:number type:number type:boolean))))
  (eq-primitive? substring=?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:boolean))))
  (eq-primitive? string-ci=?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:string type:number type:number type:boolean))))
  (eq-primitive? substring-ci=?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:boolean))))
  (eq-primitive? string<?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:string type:number type:number type:boolean))))
  (eq-primitive? substring<?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:boolean))))
  (eq-primitive? string>?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:boolean))))
  (eq-primitive? string<=?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:boolean))))
  (eq-primitive? string>=?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:boolean))))
  (eq-primitive? string-ci<?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:string type:number type:number type:boolean))))
  (eq-primitive? substring-ci<?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:boolean))))
  (eq-primitive? string-ci>?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:boolean))))
  (eq-primitive? string-ci<=?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:boolean))))
  (eq-primitive? string-ci>=?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number))))
  (eq-primitive? string-hash))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number))))
  (eq-primitive? string-hash-mod))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:boolean))))
  (eq-primitive? string-capitalized?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:boolean))))
  (eq-primitive? substring-capitalized?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:boolean))))
  (eq-primitive? string-upper-case?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:boolea))))
  (eq-primitive? substring-upper-case?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:boolean))))
  (eq-primitive? string-lower-case?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:boolean))))
  (eq-primitive? substring-lower-case?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string))))
  (eq-primitive? string-capitalize))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:boolean))))
  (eq-primitive? string-capitalize!))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:boolean))))
  (eq-primitive? substring-capitalize!))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string))))
  (eq-primitive? string-downcase))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:boolean))))
  (eq-primitive? string-downcase!))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:boolean))))
  (eq-primitive? substring-downcase!))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string))))
  (eq-primitive? string-upcase))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:boolean))))
  (eq-primitive? string-upcase!))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:boolean))))
  (eq-primitive? substring-upcase!))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:string))))
  (eq-primitive? string-append))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:string))))
  (eq-primitive? substring))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:string))))
  (eq-primitive? string-head))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:string))))
  (eq-primitive? string-tail))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:char type:string))))
  (eq-primitive? string-pad-left))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:char-set type:string))))
  (eq-primitive? string-trim))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:char-set type:string))))
  (eq-primitive? string-trim-left))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:char-set type:string))))
  (eq-primitive? string-trim-right))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:number type:false))))
  (eq-primitive? string-search-forward))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:number type:number type:number type:false))))
  (eq-primitive? substring-search-forward))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:number type:false))))
  (eq-primitive? string-search-backward))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:number type:number type:number type:false))))
  (eq-primitive? substring-search-backward))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:boolean))))
  (eq-primitive? substring?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:char type:number type:false))))
  (eq-primitive? string-find-next-char))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:char type:number type:false))))
  (eq-primitive? substring-find-next-char))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:char type:number type:false))))
  (eq-primitive? string-find-next-char-ci))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:char type:number type:false))))
  (eq-primitive? substring-find-next-char-ci))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:char-set type:number type:false))))
  (eq-primitive? string-find-next-char-in-set))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:char-set type:number type:false))))
  (eq-primitive? substring-find-next-char-in-set))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:char type:number type:false))))
  (eq-primitive? string-find-previous-char))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:char type:number type:false))))
  (eq-primitive? substring-find-previous-char))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:char type:number type:false))))
  (eq-primitive? string-find-previous-char-ci))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:char type:number type:false))))
  (eq-primitive? substring-find-previous-char-ci))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:char-set type:number type:false))))
  (eq-primitive? string-find-previous-char-in-set))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:char-set type:number type:false))))
  (eq-primitive? substring-find-previous-char-in-set))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:number))))
  (eq-primitive? string-match-forward))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:string type:number type:number type:number))))
  (eq-primitive? substring-match-forward))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:number))))
  (eq-primitive? string-match-forward-ci))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:string type:number type:number type:number))))
  (eq-primitive? substring-match-forward-ci))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:number))))
  (eq-primitive? string-match-backward))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:string type:number type:number type:number))))
  (eq-primitive? substring-match-backward))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:number))))
  (eq-primitive? string-match-backward-ci))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:string type:number type:number type:number))))
  (eq-primitive? substring-match-backward-ci))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:boolean))))
  (eq-primitive? string-prefix?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:string type:number type:number type:boolean))))
  (eq-primitive? substring-prefix?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:boolean))))
  (eq-primitive? string-prefix-ci?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:string type:number type:number type:boolean))))
  (eq-primitive? substring-prefix-ci?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:boolean))))
  (eq-primitive? string-suffix?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:string type:number type:number type:boolean))))
  (eq-primitive? substring-suffix?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string type:boolean))))
  (eq-primitive? string-suffix-ci?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:string type:number type:number type:boolean))))
  (eq-primitive? substring-suffix-ci?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:char type:char type:string))))
  (eq-primitive? string-replace))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:char type:char type:string))))
  (eq-primitive? substring-replace))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:string))))
  (eq-primitive? reverse-string))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:number type:number type:string))))
  (eq-primitive? reverse-substring))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:any type:boolean))))
  (eq-primitive? boolean?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:any type:boolean))))
  (eq-primitive? not))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:any type:boolean))))
  (eq-primitive? false?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:boolean type:boolean type:boolean))))
  (eq-primitive? boolean=?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:any type:boolean))))
  (eq-primitive? boolean/and))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:any type:boolean))))
  (eq-primitive? boolean/or))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:any type:boolean))))
  (eq-primitive? symbol?))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:symbol type:string))))
  (eq-primitive? symbol->string))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:string type:symbol))))
  (eq-primitive? string->symbol))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:symbol type:symbol))))
  (eq-primitive? symbol-append))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:symbol type:number))))
  (eq-primitive? symbol-hash))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:symbol type:number type:number))))
  (eq-primitive? symbol-hash-mod))
        
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> type:symbol type:symbol type:boolean))))
  (eq-primitive? symbol<?))
        