(time (loop for i from 0 to 10000 sum i))
(time (loop for i fixnum from 0 to 10000 sum i fixnum));speed up

(defparameter a1 (make-array 10000000 :element-type 'single-float))
