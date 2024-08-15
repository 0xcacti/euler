;; What is the value of the first triangle number to have over five hundred divisors?

(defun trianglep (number)
  "Return t if number is a triangle number, nil otherwise."
  (let ((sum 0))
    (loop for i from 1 to number do
          (setf sum (+ sum i))
          (when (= sum number)
            (return t)))
    nil))

(defun next-triangle (number)
  (loop for n from number when (trianglep n) return n))



;; want (do-primes p 0 19)
(defmacro do-primes ((var start end) &body body)
  `(do ((,var (next-prime ,start) (next-prime (+ 1 ,var))))
     ((> ,var ,end))
     ,@body))

(defun sum-of-primes (start end)
  (let ((sum 0))
    (do-primes (p start end)
      (setf sum (+ sum p)))
    sum))



