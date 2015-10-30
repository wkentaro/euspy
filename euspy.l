;; vim: set ft=lisp:

;; -------------------------------
;; list
;; -------------------------------

(defmacro pappend (lst el)
  "python: [1, 2].append(3) -> [1, 2, 3]
  eus: (pappend (list 1 2) 3) -> (1 2 3)"
  `(if (null ,lst)
     (setf ,lst (list ,el))
     (nconc ,lst (list ,el))
     )
  )

(defun slice (lst start &optional end)
  (if (not end)
    (subseq lst start)
    (if (> end 0)
      (subseq lst start end)
      (subseq lst start (+ 1 (length lst) end))
      )
    )
  )


;; -------------------------------
;; string
;; -------------------------------

(defmacro preplace (str old new)
  "python: 'hoge_fuga'.replace('_', ' ')
  eus: (preplace \"hoge_fuga\" #\_ #\ )"
  (substitute new old str)
  )


(defun str+ (str add)
  "python: 'hoge' + 'fuga' -> 'hogefuga'
  eus: (str+ \"hoge\" \"fuga\") -> \"hogefuga\""
  (concatenate string str add)
  )
