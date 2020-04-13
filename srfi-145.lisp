;;;; srfi-88.lisp

(cl:in-package "https://github.com/g000001/srfi-145#internals")


(defmacro assume (expression &rest messages)
  `(unless ,expression
     (error "invalid assumption: ~S~%~{~A ~}"
            ',expression
            ',messages)))


;;; *EOF*
