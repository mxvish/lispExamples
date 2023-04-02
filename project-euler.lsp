(defun p001 (n)
    (setq sum 0)
    (loop for i from 1 below n
		if (or (zerop (mod i 3)) (zerop (mod i 5))) 
			do (setq sum (+ sum i)))
    (print sum))

(defun p002 (n)
    (setq a 1)
    (setq b 2)
    (setq sum 0)
    (loop while (< b n) do 
        (when (evenp b) (setq sum (+ sum b)))
	        (setq tmp (+ a b))
    	    (setq a b)
        	(setq b tmp))
    (print sum))

(defun p003 (num)
	(setq factors ())
	(setq div 2)

	(loop while (>= num div) do
		(when (zerop (mod num div))
			(push div factors)
			(setq num (/ num div)))
		(if (= div 2) 
			(incf div)
			(setq div (+ div 2))))

	(print (elt factors 0)))

(defun p004(digit)
	(setq x (- (expt 10 digit) 1))
	(setq ans 0)

	(loop for i downfrom x to (expt 10 (- digit 1)) do
		(loop for j downfrom i to (expt 10 (- digit 1)) do
			(setq n (* i j))
	 		(when (and 
				(< ans n)
				(string-equal 
				(write-to-string n)
				(reverse (write-to-string n))))
				(setq ans n)
				(return))))
	(print ans)
)

(loop for i from 1 to 4
      do (format t "==== p0~d ====" i)
      (cond ((= i 1)
			 (p001 10)
			 (p001 1000))
            ((= i 2)
			 (p002 35)
             (p002 (* 4 (expt 10 6)))) 
            ((= i 3) 
			 (p003 13195)
			 (p003 600851475143))
            ((= i 4) 
             (p004 2)
             (p004 3))
            ) (terpri))
;https://projecteuler.net/archives
