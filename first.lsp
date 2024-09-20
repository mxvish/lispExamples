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

(defparameter x T)
(if x (format t "yes") (format t "no"))
(terpri)

(defparameter y NIL)
(if y (format t "yes") (format t "no"))
(terpri)

(write 3e2)
(terpri)

(format t "Enter here: ")
(format t (read-line))
