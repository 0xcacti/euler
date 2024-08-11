;; If we list all the natural numbers below 10 that are multiples of 
;; 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
;; Find the sum of all the multiples of 3 or 5 below 1000.


(defun find-multiples (num &rest divisors) 
  "finds the numbers below num that are divisible by any of &rest" 
   (let (( mult (make-array 1 :fill-pointer 0 :adjustable t)))
   (dotimes (i num)
     (cond ((zerop i) nil)
           ((some #'(lambda (j) (zerop (mod i j))) divisors)
                (vector-push-extend i mult))))
     mult))

(find-multiples 1000 3 5 )

(defun sum-multiples (num a b) "sums multiples of a and b below a certain num"
  (reduce #'+ (find-multiples num a b)))



(sum-multiples 1000 3 5 )
