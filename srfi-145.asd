;;;; srfi-145.asd

(cl:in-package :asdf)


(defsystem :srfi-145
  :version "20200414"
  :description "SRFI 145 for CL: Assumptions"
  :long-description "SRFI 145 for CL: Assumptions
https://srfi.schemers.org/srfi-145"
  :author "CHIBA Masaomi"
  :maintainer "CHIBA Masaomi"
  :serial t
  :depends-on ()
  :components ((:file "package")
               (:file "srfi-145")))


(defmethod perform :after ((o load-op) (c (eql (find-system :srfi-145))))
  (let ((name "https://github.com/g000001/srfi-145")
        (nickname :srfi-145))
    (if (and (find-package nickname)
             (not (eq (find-package nickname)
                      (find-package name))))
        (warn "~A: A package with name ~A already exists." name nickname)
        (rename-package name name `(,nickname)))))


;;; *EOF*
