(load "propagator/load")
(load "sets")
(load "types")
(load "type-intervals")

;;; This section is copied from interpreter/load
(load "interpreter/utils" user-initial-environment)
(load "interpreter/syntax" user-initial-environment)
(load "interpreter/rtdata" user-initial-environment)

(define generic-evaluation-environment
  (extend-top-level-environment user-initial-environment))
(load "interpreter/typeinterp" generic-evaluation-environment)
(load "interpreter/interp" generic-evaluation-environment)
(load "interpreter/repl" generic-evaluation-environment)
(load "build-primitive-type-cell" generic-evaluation-environment)
(load "primitive-def-handlers" generic-evaluation-environment)
(ge generic-evaluation-environment)

; for propagator: (initialize-scheduler)
; for interpreter: (init) / (go)
