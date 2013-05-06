(define (init-primitives env)

  (define-primitive-func! 'eq? eq? 
    (e:cons 
      (e:constant-list (list type:any type:any))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'equal? equal? 
    (e:cons 
      (e:constant-list (list type:any type:any))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'eqv? eqv? 
    (e:cons 
      (e:constant-list (list type:any type:any))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'number? number? 
    (e:cons 
      (e:constant-list (list type:any))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! '= = 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! '< < 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! '> > 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! '<= <= 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! '>= >= 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'zero? zero? 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'positive? positive? 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'negative? negative? 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'odd? odd? 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'even? even? 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! '+ + 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! '- - 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! '/ / 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! '* * 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! '1+ 1+ 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'max max 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'min min 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'abs abs 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'numerator numerator 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'denominator denominator 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'floor floor 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'ceiling ceiling 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'truncate truncate 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'round round 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'floor->exact floor->exact 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'ceiling->exact ceiling->exact 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'truncate->exact truncate->exact 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'round->exact round->exact 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'simplest-rational simplest-rational 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'simplest-exact-rational simplest-exact-rational 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'exp exp 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'log log 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'sin sin 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'cos cos 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'tan tan 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'asin asin 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'acos acos 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'atan atan 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'atan atan 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'sqrt sqrt 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'expt expt 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'number->string number->string 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:string)))
    env)

  (define-primitive-func! 'string->number string->number 
    (e:cons 
      (e:constant-list (list type:string))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'random random 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'char->name char->name 
    (e:cons 
      (e:constant-list (list type:char))
      (e:constant (type:union type:string)))
    env)

  (define-primitive-func! 'name->char name->char 
    (e:cons 
      (e:constant-list (list type:string))
      (e:constant (type:union type:char)))
    env)

  (define-primitive-func! 'char=? char=? 
    (e:cons 
      (e:constant-list (list type:char type:char))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'char<? char<? 
    (e:cons 
      (e:constant-list (list type:char type:char))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'char>? char>? 
    (e:cons 
      (e:constant-list (list type:char type:char))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'char<=? char<=? 
    (e:cons 
      (e:constant-list (list type:char type:char))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'char>=? char>=? 
    (e:cons 
      (e:constant-list (list type:char type:char))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'char-ci=? char-ci=? 
    (e:cons 
      (e:constant-list (list type:char type:char))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'char-ci<? char-ci<? 
    (e:cons 
      (e:constant-list (list type:char type:char))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'char-ci<=? char-ci<=? 
    (e:cons 
      (e:constant-list (list type:char type:char))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'char-ci>=? char-ci>=? 
    (e:cons 
      (e:constant-list (list type:char type:char))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'char? char? 
    (e:cons 
      (e:constant-list (list type:char))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'char-upcase char-upcase 
    (e:cons 
      (e:constant-list (list type:char))
      (e:constant (type:union type:char)))
    env)

  (define-primitive-func! 'char-downcase char-downcase 
    (e:cons 
      (e:constant-list (list type:char))
      (e:constant (type:union type:char)))
    env)

  (define-primitive-func! 'char->digit char->digit 
    (e:cons 
      (e:constant-list (list type:char type:number))
      (e:constant (type:union type:char)))
    env)

  (define-primitive-func! 'digit->char digit->char 
    (e:cons 
      (e:constant-list (list type:number))
      (e:constant (type:union type:char)))
    env)

  (define-primitive-func! 'make-string make-string 
    (e:cons 
      (e:constant-list (list type:number type:char))
      (e:constant (type:union type:string)))
    env)

  (define-primitive-func! 'string string 
    (e:cons 
      (e:constant-list (list type:char type:char))
      (e:constant (type:union type:string)))
    env)

  (define-primitive-func! 'string-copy string-copy 
    (e:cons 
      (e:constant-list (list type:string))
      (e:constant (type:union type:string)))
    env)

  (define-primitive-func! 'string? string? 
    (e:cons 
      (e:constant-list (list type:any))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string-length string-length 
    (e:cons 
      (e:constant-list (list type:string))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'string-ref string-ref 
    (e:cons 
      (e:constant-list (list type:string type:number))
      (e:constant (type:union type:char)))
    env)

  (define-primitive-func! 'string-set! string-set! 
    (e:cons 
      (e:constant-list (list type:string type:number type:char))
      (e:constant (type:union type:none)))
    env)

  (define-primitive-func! 'string=? string=? 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'substring=? substring=? 
    (e:cons 
      (e:constant-list (list type:string type:number type:number type:string type:number type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string-ci=? string-ci=? 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'substring-ci=? substring-ci=? 
    (e:cons 
      (e:constant-list (list type:string type:number type:number type:string type:number type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string<? string<? 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'substring<? substring<? 
    (e:cons 
      (e:constant-list (list type:string type:number type:number type:string type:number type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string>? string>? 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string<=? string<=? 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string>=? string>=? 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string-ci<? string-ci<? 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'substring-ci<? substring-ci<? 
    (e:cons 
      (e:constant-list (list type:string type:number type:number type:string type:number type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string-ci>? string-ci>? 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string-ci<=? string-ci<=? 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string-ci>=? string-ci>=? 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string-hash string-hash 
    (e:cons 
      (e:constant-list (list type:string))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'string-hash-mod string-hash-mod 
    (e:cons 
      (e:constant-list (list type:string type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'string-capitalized? string-capitalized? 
    (e:cons 
      (e:constant-list (list type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'substring-capitalized? substring-capitalized? 
    (e:cons 
      (e:constant-list (list type:string type:number type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string-upper-case? string-upper-case? 
    (e:cons 
      (e:constant-list (list type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'substring-upper-case? substring-upper-case? 
    (e:cons 
      (e:constant-list (list type:string type:number type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string-lower-case? string-lower-case? 
    (e:cons 
      (e:constant-list (list type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'substring-lower-case? substring-lower-case? 
    (e:cons 
      (e:constant-list (list type:string type:number type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string-capitalize string-capitalize 
    (e:cons 
      (e:constant-list (list type:string))
      (e:constant (type:union type:string)))
    env)

  (define-primitive-func! 'string-capitalize! string-capitalize! 
    (e:cons 
      (e:constant-list (list type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'substring-capitalize! substring-capitalize! 
    (e:cons 
      (e:constant-list (list type:string type:number type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string-downcase string-downcase 
    (e:cons 
      (e:constant-list (list type:string))
      (e:constant (type:union type:string)))
    env)

  (define-primitive-func! 'string-downcase! string-downcase! 
    (e:cons 
      (e:constant-list (list type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'substring-downcase! substring-downcase! 
    (e:cons 
      (e:constant-list (list type:string type:number type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string-upcase string-upcase 
    (e:cons 
      (e:constant-list (list type:string))
      (e:constant (type:union type:string)))
    env)

  (define-primitive-func! 'string-upcase! string-upcase! 
    (e:cons 
      (e:constant-list (list type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'substring-upcase! substring-upcase! 
    (e:cons 
      (e:constant-list (list type:string type:number type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string-append string-append 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:string)))
    env)

  (define-primitive-func! 'substring substring 
    (e:cons 
      (e:constant-list (list type:string type:number type:number))
      (e:constant (type:union type:string)))
    env)

  (define-primitive-func! 'string-head string-head 
    (e:cons 
      (e:constant-list (list type:string type:number))
      (e:constant (type:union type:string)))
    env)

  (define-primitive-func! 'string-tail string-tail 
    (e:cons 
      (e:constant-list (list type:string type:number))
      (e:constant (type:union type:string)))
    env)

  (define-primitive-func! 'string-pad-left string-pad-left 
    (e:cons 
      (e:constant-list (list type:string type:number type:char))
      (e:constant (type:union type:string)))
    env)

  (define-primitive-func! 'string-search-forward string-search-forward 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:number type:false)))
    env)

  (define-primitive-func! 'substring-search-forward substring-search-forward 
    (e:cons 
      (e:constant-list (list type:string type:string type:number type:number))
      (e:constant (type:union type:number type:false)))
    env)

  (define-primitive-func! 'string-search-backward string-search-backward 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:number type:false)))
    env)

  (define-primitive-func! 'substring-search-backward substring-search-backward 
    (e:cons 
      (e:constant-list (list type:string type:string type:number type:number))
      (e:constant (type:union type:number type:false)))
    env)

  (define-primitive-func! 'substring? substring? 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string-find-next-char string-find-next-char 
    (e:cons 
      (e:constant-list (list type:string type:char))
      (e:constant (type:union type:number type:false)))
    env)

  (define-primitive-func! 'substring-find-next-char substring-find-next-char 
    (e:cons 
      (e:constant-list (list type:string type:number type:number type:char))
      (e:constant (type:union type:number type:false)))
    env)

  (define-primitive-func! 'string-find-next-char-ci string-find-next-char-ci 
    (e:cons 
      (e:constant-list (list type:string type:char))
      (e:constant (type:union type:number type:false)))
    env)

  (define-primitive-func! 'substring-find-next-char-ci substring-find-next-char-ci 
    (e:cons 
      (e:constant-list (list type:string type:number type:number type:char))
      (e:constant (type:union type:number type:false)))
    env)

  (define-primitive-func! 'string-find-previous-char string-find-previous-char 
    (e:cons 
      (e:constant-list (list type:string type:char))
      (e:constant (type:union type:number type:false)))
    env)

  (define-primitive-func! 'substring-find-previous-char substring-find-previous-char 
    (e:cons 
      (e:constant-list (list type:string type:number type:number type:char))
      (e:constant (type:union type:number type:false)))
    env)

  (define-primitive-func! 'string-find-previous-char-ci string-find-previous-char-ci 
    (e:cons 
      (e:constant-list (list type:string type:char))
      (e:constant (type:union type:number type:false)))
    env)

  (define-primitive-func! 'substring-find-previous-char-ci substring-find-previous-char-ci 
    (e:cons 
      (e:constant-list (list type:string type:number type:number type:char))
      (e:constant (type:union type:number type:false)))
    env)

  (define-primitive-func! 'string-match-forward string-match-forward 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'substring-match-forward substring-match-forward 
    (e:cons 
      (e:constant-list (list type:string type:number type:number type:string type:number type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'string-match-forward-ci string-match-forward-ci 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'substring-match-forward-ci substring-match-forward-ci 
    (e:cons 
      (e:constant-list (list type:string type:number type:number type:string type:number type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'string-match-backward string-match-backward 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'substring-match-backward substring-match-backward 
    (e:cons 
      (e:constant-list (list type:string type:number type:number type:string type:number type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'string-match-backward-ci string-match-backward-ci 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'substring-match-backward-ci substring-match-backward-ci 
    (e:cons 
      (e:constant-list (list type:string type:number type:number type:string type:number type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'string-prefix? string-prefix? 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'substring-prefix? substring-prefix? 
    (e:cons 
      (e:constant-list (list type:string type:number type:number type:string type:number type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string-prefix-ci? string-prefix-ci? 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'substring-prefix-ci? substring-prefix-ci? 
    (e:cons 
      (e:constant-list (list type:string type:number type:number type:string type:number type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string-suffix? string-suffix? 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'substring-suffix? substring-suffix? 
    (e:cons 
      (e:constant-list (list type:string type:number type:number type:string type:number type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string-suffix-ci? string-suffix-ci? 
    (e:cons 
      (e:constant-list (list type:string type:string))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'substring-suffix-ci? substring-suffix-ci? 
    (e:cons 
      (e:constant-list (list type:string type:number type:number type:string type:number type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'string-replace string-replace 
    (e:cons 
      (e:constant-list (list type:string type:char type:char))
      (e:constant (type:union type:string)))
    env)

  (define-primitive-func! 'substring-replace substring-replace 
    (e:cons 
      (e:constant-list (list type:string type:number type:number type:char type:char))
      (e:constant (type:union type:string)))
    env)

  (define-primitive-func! 'reverse-string reverse-string 
    (e:cons 
      (e:constant-list (list type:string))
      (e:constant (type:union type:string)))
    env)

  (define-primitive-func! 'reverse-substring reverse-substring 
    (e:cons 
      (e:constant-list (list type:string type:number type:number))
      (e:constant (type:union type:string)))
    env)

  (define-primitive-func! 'boolean? boolean? 
    (e:cons 
      (e:constant-list (list type:any))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'not not 
    (e:cons 
      (e:constant-list (list type:any))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'false? false? 
    (e:cons 
      (e:constant-list (list type:any))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'boolean=? boolean=? 
    (e:cons 
      (e:constant-list (list type:boolean type:boolean))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'boolean/and boolean/and 
    (e:cons 
      (e:constant-list (list type:any))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'boolean/or boolean/or 
    (e:cons 
      (e:constant-list (list type:any))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'symbol? symbol? 
    (e:cons 
      (e:constant-list (list type:any))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! 'symbol->string symbol->string 
    (e:cons 
      (e:constant-list (list type:symbol))
      (e:constant (type:union type:string)))
    env)

  (define-primitive-func! 'string->symbol string->symbol 
    (e:cons 
      (e:constant-list (list type:string))
      (e:constant (type:union type:symbol)))
    env)

  (define-primitive-func! 'symbol-append symbol-append 
    (e:cons 
      (e:constant-list (list type:symbol))
      (e:constant (type:union type:symbol)))
    env)

  (define-primitive-func! 'symbol-hash symbol-hash 
    (e:cons 
      (e:constant-list (list type:symbol))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'symbol-hash-mod symbol-hash-mod 
    (e:cons 
      (e:constant-list (list type:symbol type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! 'symbol<? symbol<? 
    (e:cons 
      (e:constant-list (list type:symbol type:symbol))
      (e:constant (type:union type:boolean)))
    env))

(define (init-primitives env)

  (define-primitive-func! '+ + 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! '- - 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:number)))
    env)

  (define-primitive-func! '* *
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:number)))
    env)
  
  (define-primitive-func! '= = 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! '< < 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! '> > 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! '<= <= 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:boolean)))
    env)

  (define-primitive-func! '>= >= 
    (e:cons 
      (e:constant-list (list type:number type:number))
      (e:constant (type:union type:boolean)))
    env))
