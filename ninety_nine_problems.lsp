(setf *random-state* (make-random-state t))

(defun problem1()
    (setq x (loop for i from 0 below 3 collect (random 10)))
    (print x)
    (print (elt x (- (length x) 1))))

(defun problem2()
    (setq x (loop for i from 0 below 3 collect (random 10)))
    (print x)
    (print (elt x (- (length x) 2))))

(defun problem3(x y)
    (terpri)
    (format t  "~{~a~^, ~}" (list x y))
    (print (elt x (- y 1))))

(defun problem4()
    (setq x (loop for i from 0 below (random 5) collect (random 10)))
    (print x)
    (print (length x)))

(defun problem5()
    (setq x (loop for i from 0 below (random 5) collect (random 10)))
    (print x)
    (print (reverse x)))

(defun problem8(x)
    (print x)
    (setq ans ())
    (loop for i from 0 below (length x) do 
        (unless (numberp (position (elt x i) ans :test #'equal)) 
            (setq ans (append ans (list (elt x i))))))
    (print ans))

(loop for i from 1 to 8 
      do (format t "==== p0~d ====" i)
      (cond ((= i 1) (problem1))
            ((= i 2) (problem2))
            ((= i 3) 
                (problem3 (loop for i from 0 below 3 collect (random 10)) (+ (random 3) 1)))
            ((= i 4) (problem4))
            ((= i 5) (problem5))
            ((= i 8) 
                (problem8 (list "a" "a" "a" "a" "b" "c" "c" "a" "a" "d" "e" "e" "e" "e")))
            ) (terpri))
