(define (init-primitives env)

  (define-primitive-func! 'eq? eq? 
    (e:constant (-> type:any type:any type:boolean))
    env)

  (define-primitive-func! 'equal? equal? 
    (e:constant (-> type:any type:any type:boolean))
    env)

  (define-primitive-func! 'eqv? eqv? 
    (e:constant (-> type:any type:any type:boolean))
    env)

  (define-primitive-func! 'number? number? 
    (e:constant (-> type:any type:boolean))
    env)

  (define-primitive-func! '= = 
    (e:constant (-> type:number type:number type:number))
    env)

  (define-primitive-func! '< < 
    (e:constant (-> type:number type:number type:number))
    env)

  (define-primitive-func! '> > 
    (e:constant (-> type:number type:number type:number))
    env)

  (define-primitive-func! '<= <= 
    (e:constant (-> type:number type:number type:number))
    env)

  (define-primitive-func! '>= >= 
    (e:constant (-> type:number type:number type:number))
    env)

  (define-primitive-func! 'zero? zero? 
    (e:constant (-> type:number type:boolean))
    env)

  (define-primitive-func! 'positive? positive? 
    (e:constant (-> type:number type:boolean))
    env)

  (define-primitive-func! 'negative? negative? 
    (e:constant (-> type:number type:boolean))
    env)

  (define-primitive-func! 'odd? odd? 
    (e:constant (-> type:number type:boolean))
    env)

  (define-primitive-func! 'even? even? 
    (e:constant (-> type:number type:boolean))
    env)

  (define-primitive-func! '+ + 
    (e:constant (-> type:number type:number type:number))
    env)

  (define-primitive-func! '- - 
    (e:constant (-> type:number type:number type:number))
    env)

  (define-primitive-func! '/ / 
    (e:constant (-> type:number type:number type:number))
    env)

  (define-primitive-func! '* * 
    (e:constant (-> type:number type:number type:number))
    env)

  (define-primitive-func! '1+ 1+ 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'max max 
    (e:constant (-> type:number type:number type:number))
    env)

  (define-primitive-func! 'min min 
    (e:constant (-> type:number type:number type:number))
    env)

  (define-primitive-func! 'abs abs 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'numerator numerator 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'denominator denominator 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'floor floor 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'ceiling ceiling 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'truncate truncate 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'round round 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'floor->exact floor->exact 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'ceiling->exact ceiling->exact 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'truncate->exact truncate->exact 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'round->exact round->exact 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'simplest-rational simplest-rational 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'simplest-exact-rational simplest-exact-rational 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'exp exp 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'log log 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'sin sin 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'cos cos 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'tan tan 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'asin asin 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'acos acos 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'atan atan 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'atan atan 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'sqrt sqrt 
    (e:constant (-> type:number type:number))
    env)

  (define-primitive-func! 'expt expt 
    (e:constant (-> type:number type:number type:number))
    env)

  (define-primitive-func! 'number->string number->string 
    (e:constant (-> type:number type:string))
    env)

  (define-primitive-func! 'string->number string->number 
    (e:constant (-> type:string type:number))
    env)

  (define-primitive-func! 'random random 
    (e:constant (-> type:number ))
    env)

  (define-primitive-func! 'char->name char->name 
    (e:constant (-> type:char type:string))
    env)

  (define-primitive-func! 'name->char name->char 
    (e:constant (-> type:string type:char))
    env)

  (define-primitive-func! 'char=? char=? 
    (e:constant (-> type:char type:char type:boolean))
    env)

  (define-primitive-func! 'char<? char<? 
    (e:constant (-> type:char type:char type:boolean))
    env)

  (define-primitive-func! 'char>? char>? 
    (e:constant (-> type:char type:char type:boolean))
    env)

  (define-primitive-func! 'char<=? char<=? 
    (e:constant (-> type:char type:char type:boolean))
    env)

  (define-primitive-func! 'char>=? char>=? 
    (e:constant (-> type:char type:char type:boolean))
    env)

  (define-primitive-func! 'char-ci=? char-ci=? 
    (e:constant (-> type:char type:char type:boolean))
    env)

  (define-primitive-func! 'char-ci<? char-ci<? 
    (e:constant (-> type:char type:char type:boolean))
    env)

  (define-primitive-func! 'char-ci<=? char-ci<=? 
    (e:constant (-> type:char type:char type:boolean))
    env)

  (define-primitive-func! 'char-ci>=? char-ci>=? 
    (e:constant (-> type:char type:char type:boolean))
    env)

  (define-primitive-func! 'char? char? 
    (e:constant (-> type:char type:boolean))
    env)

  (define-primitive-func! 'char-upcase char-upcase 
    (e:constant (-> type:char type:char))
    env)

  (define-primitive-func! 'char-downcase char-downcase 
    (e:constant (-> type:char type:char))
    env)

  (define-primitive-func! 'char->digit char->digit 
    (e:constant (-> type:char type:number type:char))
    env)

  (define-primitive-func! 'digit->char digit->char 
    (e:constant (-> type:number type:char))
    env)

  (define-primitive-func! 'make-string make-string 
    (e:constant (-> type:number type:char type:string))
    env)

  (define-primitive-func! 'string string 
    (e:constant (-> type:char type:char type:string))
    env)

  (define-primitive-func! 'string-copy string-copy 
    (e:constant (-> type:string type:string))
    env)

  (define-primitive-func! 'string? string? 
    (e:constant (-> type:any type:boolean))
    env)

  (define-primitive-func! 'string-length string-length 
    (e:constant (-> type:string type:number))
    env)

  (define-primitive-func! 'string-ref string-ref 
    (e:constant (-> type:string type:number type:char))
    env)

  (define-primitive-func! 'string-set! string-set! 
    (e:constant (-> type:string type:number type:char type:none))
    env)

  (define-primitive-func! 'string=? string=? 
    (e:constant (-> type:string type:string type:boolean))
    env)

  (define-primitive-func! 'substring=? substring=? 
    (e:constant (-> type:string type:number type:number type:string type:number type:number type:boolean))
    env)

  (define-primitive-func! 'string-ci=? string-ci=? 
    (e:constant (-> type:string type:string type:boolean))
    env)

  (define-primitive-func! 'substring-ci=? substring-ci=? 
    (e:constant (-> type:string type:number type:number type:string type:number type:number type:boolean))
    env)

  (define-primitive-func! 'string<? string<? 
    (e:constant (-> type:string type:string type:boolean))
    env)

  (define-primitive-func! 'substring<? substring<? 
    (e:constant (-> type:string type:number type:number type:string type:number type:number type:boolean))
    env)

  (define-primitive-func! 'string>? string>? 
    (e:constant (-> type:string type:string type:boolean))
    env)

  (define-primitive-func! 'string<=? string<=? 
    (e:constant (-> type:string type:string type:boolean))
    env)

  (define-primitive-func! 'string>=? string>=? 
    (e:constant (-> type:string type:string type:boolean))
    env)

  (define-primitive-func! 'string-ci<? string-ci<? 
    (e:constant (-> type:string type:string type:boolean))
    env)

  (define-primitive-func! 'substring-ci<? substring-ci<? 
    (e:constant (-> type:string type:number type:number type:string type:number type:number type:boolean))
    env)

  (define-primitive-func! 'string-ci>? string-ci>? 
    (e:constant (-> type:string type:string type:boolean))
    env)

  (define-primitive-func! 'string-ci<=? string-ci<=? 
    (e:constant (-> type:string type:string type:boolean))
    env)

  (define-primitive-func! 'string-ci>=? string-ci>=? 
    (e:constant (-> type:string type:string type:boolean))
    env)

  (define-primitive-func! 'string-hash string-hash 
    (e:constant (-> type:string type:number))
    env)

  (define-primitive-func! 'string-hash-mod string-hash-mod 
    (e:constant (-> type:string type:number type:number))
    env)

  (define-primitive-func! 'string-capitalized? string-capitalized? 
    (e:constant (-> type:string type:boolean))
    env)

  (define-primitive-func! 'substring-capitalized? substring-capitalized? 
    (e:constant (-> type:string type:number type:number type:boolean))
    env)

  (define-primitive-func! 'string-upper-case? string-upper-case? 
    (e:constant (-> type:string type:boolean))
    env)

  (define-primitive-func! 'substring-upper-case? substring-upper-case? 
    (e:constant (-> type:string type:number type:number type:boolean))
    env)

  (define-primitive-func! 'string-lower-case? string-lower-case? 
    (e:constant (-> type:string type:boolean))
    env)

  (define-primitive-func! 'substring-lower-case? substring-lower-case? 
    (e:constant (-> type:string type:number type:number type:boolean))
    env)

  (define-primitive-func! 'string-capitalize string-capitalize 
    (e:constant (-> type:string type:string))
    env)

  (define-primitive-func! 'string-capitalize! string-capitalize! 
    (e:constant (-> type:string type:boolean))
    env)

  (define-primitive-func! 'substring-capitalize! substring-capitalize! 
    (e:constant (-> type:string type:number type:number type:boolean))
    env)

  (define-primitive-func! 'string-downcase string-downcase 
    (e:constant (-> type:string type:string))
    env)

  (define-primitive-func! 'string-downcase! string-downcase! 
    (e:constant (-> type:string type:boolean))
    env)

  (define-primitive-func! 'substring-downcase! substring-downcase! 
    (e:constant (-> type:string type:number type:number type:boolean))
    env)

  (define-primitive-func! 'string-upcase string-upcase 
    (e:constant (-> type:string type:string))
    env)

  (define-primitive-func! 'string-upcase! string-upcase! 
    (e:constant (-> type:string type:boolean))
    env)

  (define-primitive-func! 'substring-upcase! substring-upcase! 
    (e:constant (-> type:string type:number type:number type:boolean))
    env)

  (define-primitive-func! 'string-append string-append 
    (e:constant (-> type:string type:string type:string))
    env)

  (define-primitive-func! 'substring substring 
    (e:constant (-> type:string type:number type:number type:string))
    env)

  (define-primitive-func! 'string-head string-head 
    (e:constant (-> type:string type:number type:string))
    env)

  (define-primitive-func! 'string-tail string-tail 
    (e:constant (-> type:string type:number type:string))
    env)

  (define-primitive-func! 'string-pad-left string-pad-left 
    (e:constant (-> type:string type:number type:char type:string))
    env)

  (define-primitive-func! 'string-search-forward string-search-forward 
    (e:constant (-> type:string type:string type:number type:false))
    env)

  (define-primitive-func! 'substring-search-forward substring-search-forward 
    (e:constant (-> type:string type:string type:number type:number type:number type:false))
    env)

  (define-primitive-func! 'string-search-backward string-search-backward 
    (e:constant (-> type:string type:string type:number type:false))
    env)

  (define-primitive-func! 'substring-search-backward substring-search-backward 
    (e:constant (-> type:string type:string type:number type:number type:number type:false))
    env)

  (define-primitive-func! 'substring? substring? 
    (e:constant (-> type:string type:string type:boolean))
    env)

  (define-primitive-func! 'string-find-next-char string-find-next-char 
    (e:constant (-> type:string type:char type:number type:false))
    env)

  (define-primitive-func! 'substring-find-next-char substring-find-next-char 
    (e:constant (-> type:string type:number type:number type:char type:number type:false))
    env)

  (define-primitive-func! 'string-find-next-char-ci string-find-next-char-ci 
    (e:constant (-> type:string type:char type:number type:false))
    env)

  (define-primitive-func! 'substring-find-next-char-ci substring-find-next-char-ci 
    (e:constant (-> type:string type:number type:number type:char type:number type:false))
    env)

  (define-primitive-func! 'string-find-previous-char string-find-previous-char 
    (e:constant (-> type:string type:char type:number type:false))
    env)

  (define-primitive-func! 'substring-find-previous-char substring-find-previous-char 
    (e:constant (-> type:string type:number type:number type:char type:number type:false))
    env)

  (define-primitive-func! 'string-find-previous-char-ci string-find-previous-char-ci 
    (e:constant (-> type:string type:char type:number type:false))
    env)

  (define-primitive-func! 'substring-find-previous-char-ci substring-find-previous-char-ci 
    (e:constant (-> type:string type:number type:number type:char type:number type:false))
    env)

  (define-primitive-func! 'string-match-forward string-match-forward 
    (e:constant (-> type:string type:string type:number))
    env)

  (define-primitive-func! 'substring-match-forward substring-match-forward 
    (e:constant (-> type:string type:number type:number type:string type:number type:number type:number))
    env)

  (define-primitive-func! 'string-match-forward-ci string-match-forward-ci 
    (e:constant (-> type:string type:string type:number))
    env)

  (define-primitive-func! 'substring-match-forward-ci substring-match-forward-ci 
    (e:constant (-> type:string type:number type:number type:string type:number type:number type:number))
    env)

  (define-primitive-func! 'string-match-backward string-match-backward 
    (e:constant (-> type:string type:string type:number))
    env)

  (define-primitive-func! 'substring-match-backward substring-match-backward 
    (e:constant (-> type:string type:number type:number type:string type:number type:number type:number))
    env)

  (define-primitive-func! 'string-match-backward-ci string-match-backward-ci 
    (e:constant (-> type:string type:string type:number))
    env)

  (define-primitive-func! 'substring-match-backward-ci substring-match-backward-ci 
    (e:constant (-> type:string type:number type:number type:string type:number type:number type:number))
    env)

  (define-primitive-func! 'string-prefix? string-prefix? 
    (e:constant (-> type:string type:string type:boolean))
    env)

  (define-primitive-func! 'substring-prefix? substring-prefix? 
    (e:constant (-> type:string type:number type:number type:string type:number type:number type:boolean))
    env)

  (define-primitive-func! 'string-prefix-ci? string-prefix-ci? 
    (e:constant (-> type:string type:string type:boolean))
    env)

  (define-primitive-func! 'substring-prefix-ci? substring-prefix-ci? 
    (e:constant (-> type:string type:number type:number type:string type:number type:number type:boolean))
    env)

  (define-primitive-func! 'string-suffix? string-suffix? 
    (e:constant (-> type:string type:string type:boolean))
    env)

  (define-primitive-func! 'substring-suffix? substring-suffix? 
    (e:constant (-> type:string type:number type:number type:string type:number type:number type:boolean))
    env)

  (define-primitive-func! 'string-suffix-ci? string-suffix-ci? 
    (e:constant (-> type:string type:string type:boolean))
    env)

  (define-primitive-func! 'substring-suffix-ci? substring-suffix-ci? 
    (e:constant (-> type:string type:number type:number type:string type:number type:number type:boolean))
    env)

  (define-primitive-func! 'string-replace string-replace 
    (e:constant (-> type:string type:char type:char type:string))
    env)

  (define-primitive-func! 'substring-replace substring-replace 
    (e:constant (-> type:string type:number type:number type:char type:char type:string))
    env)

  (define-primitive-func! 'reverse-string reverse-string 
    (e:constant (-> type:string type:string))
    env)

  (define-primitive-func! 'reverse-substring reverse-substring 
    (e:constant (-> type:string type:number type:number type:string))
    env)

  (define-primitive-func! 'boolean? boolean? 
    (e:constant (-> type:any type:boolean))
    env)

  (define-primitive-func! 'not not 
    (e:constant (-> type:any type:boolean))
    env)

  (define-primitive-func! 'false? false? 
    (e:constant (-> type:any type:boolean))
    env)

  (define-primitive-func! 'boolean=? boolean=? 
    (e:constant (-> type:boolean type:boolean type:boolean))
    env)

  (define-primitive-func! 'boolean/and boolean/and 
    (e:constant (-> type:any type:boolean))
    env)

  (define-primitive-func! 'boolean/or boolean/or 
    (e:constant (-> type:any type:boolean))
    env)

  (define-primitive-func! 'symbol? symbol? 
    (e:constant (-> type:any type:boolean))
    env)

  (define-primitive-func! 'symbol->string symbol->string 
    (e:constant (-> type:symbol type:string))
    env)

  (define-primitive-func! 'string->symbol string->symbol 
    (e:constant (-> type:string type:symbol))
    env)

  (define-primitive-func! 'symbol-append symbol-append 
    (e:constant (-> type:symbol type:symbol))
    env)

  (define-primitive-func! 'symbol-hash symbol-hash 
    (e:constant (-> type:symbol type:number))
    env)

  (define-primitive-func! 'symbol-hash-mod symbol-hash-mod 
    (e:constant (-> type:symbol type:number type:number))
    env)

  (define-primitive-func! 'symbol<? symbol<? 
    (e:constant (-> type:symbol type:symbol type:boolean))
    env))