
(define (script-fu-testUndefinedFunc image drawable)

  ;(tracing 1)
  ;(set-output-port (open-output-file "/dev/stderr"))

  ; Implemented in TinySCHEME
  (gc-verbose 1)

  ; a deprecated procedure
  ;(gimp-brightness-contrast drawable 1.0 1.0)

  ; passing excess args
  (gimp-displays-flush image)

  ; a call to the PDB (also, the replacement for deprecated)
  ; expect it is late bound, to global env
  (gimp-drawable-brightness-contrast drawable 0.5 0.5)

  ; a second distinct call to gimp
  (gimp-drawable-desaturate drawable 1)

  ; a second call to gimp, to the same function
  ; expect is still defined
  (gimp-drawable-desaturate drawable 1)

  ; nested calls to PDB
  ; inner call returns a list that must be car'd
  (gimp-drawable-desaturate (car (gimp-image-get-active-drawable image)) 1)

  ; expect "unbound variable: gimp-undefined"
  ; this must be last, because it aborts this script
  (gimp-undefined 1 )
)


(script-fu-register
   "script-fu-testUndefinedFunc"                    ;func name
   "Test a call to undefined func"                  ;menu label
   "Test undefined func"                              ;description
   "lkk"                       ;author
   ""                          ;copyright notice
   "Jan. 2021"                 ;date created
   "*"                     ;image type that the script works on
   SF-IMAGE "SF-IMAGE" 0
   SF-DRAWABLE "SF-DRAWABLE" 0
)
(script-fu-menu-register "script-fu-testUndefinedFunc" "<Image>/Test")
