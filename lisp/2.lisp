;; Each new term in the fibonacci sequenc is generated by adding the previous two terms. 
;; By starting with 1 and 2, the first 10 terms will be ... 
;; find the sum of the even-valued terms in the sequence which do not exceed four million



(defun get-all-fib-numbers (cap) 
  "find all fibonacci numbers not greater than num"
  (let ((fibs (make-array 1 :fill-pointer 0 :adjustable t)))
    (vector-push-extend 1 fibs) 
    (vector-push-extend 2 fibs)
    (loop while (< (elt fibs (- (length fibs) 1)) cap) 
          do
          (let ((cur (+ (elt fibs (- (length fibs) 1)) 
                        (elt fibs (- (length fibs) 2)))))
                (vector-push-extend cur fibs)))
   fibs))


(get-all-fib-numbers 10)

(defun sum-fib-evens-below (cap)
  "sum all even fibonacci numbers below cap"
  (let ((fibs (get-all-fib-numbers cap)))
    (reduce #'+ (remove-if-not #'(lambda (x) (and (evenp x) (< x cap))) fibs)))) 
                        
