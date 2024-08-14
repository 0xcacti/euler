(defun primep (number)
  (when (> number 1)
    (loop for fac from 2 to (isqrt number) never (zerop (mod number fac)))))

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


