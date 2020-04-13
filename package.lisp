;;;; package.lisp

(cl:in-package common-lisp-user)


(defpackage "https://github.com/g000001/srfi-145"
  (:use)
  (:export assume))


(defpackage "https://github.com/g000001/srfi-145#internals"
  (:use 
   "https://github.com/g000001/srfi-145"
   cl))


;;; *EOF*
