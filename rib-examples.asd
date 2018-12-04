;;;; rib-examples.asd

(asdf:defsystem #:rib-examples
  :serial t
  :description "Renderman examples"
  :author "Jeremiah LaRocco <jeremiah_larocco@fastmail.com>"
  :license "ISC"
  :depends-on (#:rib)
  :components ((:module "examples"
                        :components
                        ((:file "package")
                         (:file "sphere")))))

