(defun is-palindrome (n) 
  (let ((s (format nil "~d" n)))
    (string= s (reverse s))))

(defun find-largest-palindrome () 
  "find the largest palindrome made from the product of two n-digit numbers"
  (let (( largest 0 ))
    (do ((n 999 (- n 1)))
        ((= n 100))
       (do ((m 999 (- m 1)))
           ((= m 100))
           (let ((p (* n m)))
             (if (is-palindrome p) (if (> p largest) (setf largest p)))))) 
    largest))

