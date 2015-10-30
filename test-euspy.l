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
(pprint "[Passed] pappend")

(setq output (slice (list 1 2 3 4 5) 1 -2))
(setq expected (list 2 3 4))
(assert-list-equal output expected)
(pprint "[Passed] slice")

(setq output (preplace "hoge_fuga" #\_ #\ ))
(setq expected "hoge fuga")
(assert (string-equal output expected))
(pprint "[Passed] preplace")

(setq output (str+ "hoge" "fuga"))
(setq expected "hogefuga")
(assert (string-equal output expected))
(pprint "[Passed] str+")

(exit)
