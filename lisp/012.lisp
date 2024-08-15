;; What is the value of the first triangle number to have over five hundred divisors?

(defun trianglep (number)
  (when (> number 1)
    (let ((sum 0))
      (loop from 1 to (

(defun next-prime (number)
  (loop for n from number when (primep n) return n))



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



