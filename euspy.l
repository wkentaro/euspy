;; vim: set ft=lisp:


(defmacro pappend (lst el)
  "python: [1, 2].append(3) -> [1, 2, 3]
   eus: (pappend (list 1 2) 3) -> (1 2 3)"
   `(if (null ,lst)
        (setf ,lst (list ,el))
      (nconc ,lst (list ,el))))