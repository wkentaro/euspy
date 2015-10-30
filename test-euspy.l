;; vim: set ft=lisp:

(load "euspy.l")


(defmacro assert-list-equal (lst1 lst2)
  `(dotimes (i (length ,lst1))
    (assert (equal (elt ,lst1 i) (elt ,lst2 i)))
    )
  )


(setq output (pappend (list 1 2) 3))
(setq expected (list 1 2 3))
(assert-list-equal output expected)

(setq output (preplace "hoge_fuga" #\_ #\ ))
(setq expected "hoge fuga")
(assert (string-equal output expected))

(exit)
