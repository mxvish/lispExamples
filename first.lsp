(defun hello()
  (format t "lisp")
  (terpri))

;(write (+ 2 1))
(defun foo(x y)
  (+ x y))
    
(hello)
(write (foo 3 2))
(terpri)
(write (* (+ 1 2) (- 3 4)))
(terpri)

;https://gigamonkeys.com/book/syntax-and-semantics.html
