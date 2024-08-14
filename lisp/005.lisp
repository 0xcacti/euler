(defun my-gcd (a b)
  "find the greatest common divisor of two numbers a and b"
  (loop while (not (= b 0))
        do (let ((temp b)) 
             (setf b (mod a b) )
             (setf a temp)))
  a)
                

(defun my-lcm (a b)
  "find the least common multiple of two numbers a and b"
   (/ (* a b) (my-gcd a b)))

(defun lcm-multiple (n)
  "find the least common multiple of the numbers from 1 to n"
  (reduce #'my-lcm (loop for i from 1 to n collect i)))
