(setf *random-state* (make-random-state t))

(defun problem1()
    (defparameter x (loop for i from 0 below 3 collect (random 10)))
    (write x)
    (terpri)
    (write (elt x (- (length x) 1))))

(defun problem2()
    (defparameter x (loop for i from 0 below 3 collect (random 10)))
    (write x)
    (terpri)
    (write (elt x (- (length x) 2))))

(defun problem3(x y)
    (format t  "~{~a~^, ~}" (list x y))
    (terpri)
    (write (elt x (- y 1))))

(defun problem4()
    (defparameter x (loop for i from 0 below 3 collect (random 10)))
    (write x)
    (terpri)
    (write (length x)))

(defun problem5()
    (defparameter x (loop for i from 0 below 3 collect (random 10)))
    (write x)
    (terpri)
    (write (reverse x)))

(defun problem8(x)
    (write x)
    (defparameter ans ())
    (nconc ans (elt x 0))
    (loop for i from 1 below (length x) do
        (write (elt x i) (find '(elt x i) '(ans)))
        (terpri))
     ;   (if (not (find (elt x i) ans)) 
     ;       (nconc ans (list (elt x i)))))
    (write ans))
;(if (not (find 0 (list 1 2))) (format t "no"))
;(write (append (list 1 2) (list 3)))

(loop for i from 1 to 8 
      do (format t "==== p0~d ====" i)
      (terpri)
      (cond ((= i 1) (problem1))
            ((= i 2) (problem2))
            ((= i 3) 
                (problem3 (loop for i from 0 below 3 collect (random 10)) (+ (random 3) 1)))
            ((= i 4) (problem4))
            ((= i 5) (problem5))
            ((= i 8) 
                (problem8 (list "a" "a" "a" "a" "b" "c" "c" "a" "a" "d" "e" "e" "e" "e")))
            ) (terpri))

;https://sites.google.com/site/prologsite/prolog-problems/1
;https://www.tutorialspoint.com/lisp/lisp_sequences.htm
