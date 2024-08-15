;; What is the value of the first triangle number to have over five hundred divisors?

(defparameter *h* (make-hash-table))

(defun num-divisors (n) 
  (let ((c 0))
    (loop for i from 1 to (isqrt n) do 
          (when (zerop (mod n i)) 
            (if (= i (/ n i))
                (incf c)
                (incf c 2))))
    c))

(defun first-to-500 ()
  (let ((i 0)
        (triangle 0))
    (loop do 
          (incf i)
          (incf triangle i)
          (when (> (num-divisors triangle) 500) 
            (return triangle)))))
