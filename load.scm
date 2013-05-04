(load "propagator/load")
(load "sets")
(load "types")
(load "type-intervals")

;;; This section is copied from interpreter/load
(load "interpreter/utils" user-initial-environment)
(load "interpreter/syntax" user-initial-environment)
;;; This section is inserted into the copied part so that we can have an inferencer thing
(load "type-inferencer" user-initial-environment)
;(load "build-primitive-type-cell" generic-evaluation-environment)
;(load "primitive-def-handlers" generic-evaluation-environment)

;;; And now we go back to things that are directly copied.
(load "interpreter/rtdata" user-initial-environment)

(define generic-evaluation-environment
  (extend-top-level-environment user-initial-environment))

(load "interpreter/interp" generic-evaluation-environment)
(load "init-primitives" generic-evaluation-environment)
(load "interpreter/repl" generic-evaluation-environment)
(ge generic-evaluation-environment)
;;; And now we're done loading the interpreter.

; for propagator: (initialize-scheduler)
; for interpreter: (init) / (go)
