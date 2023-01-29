(defun shell-gei (str)
    (setq len (length str))
    (loop for i from 0 below len do
          (format t (subseq str i len))
          (format t (subseq str 0 i))
          (terpri)
    )
)

(shell-gei "響け！ユーフォニアム")
;reference https://togetter.com/li/1041621
