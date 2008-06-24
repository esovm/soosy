;;; -*- Mode: Scheme; scheme48-package: (config) -*-

(define-interface soosy-macros/interface
  (export (define-class   :syntax)
          (define-method  :syntax)
          (==>            :syntax)
          (usual==>       :syntax)
          ))

(define-interface soosy-objects/interface
  (export make-class make-object
          object-class object-variables object-methods object-method
          send send-usual
          class? object? object-of-class? base-class?
          class-name class-superclass class-subclasses class-methods class-method-define
          class-variables))

(define-interface soosy-helpers/interface
  (compound-interface
   soosy-objects/interface
   (export *all-classes*
           add-class!
           false? name->class)))

(define-interface soosy/interface
  (compound-interface soosy-macros/interface
                      soosy-objects/interface))
