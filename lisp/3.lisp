(defun find-prime-factors (n) 
  "find all the prime factors of a given number n"
  (let ((factors '()))
    (loop while (evenp n) do
        (push 2 factors)
        (setf n (/ n 2)))
    (loop for i from 3 to (+ (truncate (sqrt n) 1)) by 2 
        do (loop while (zerop (mod n i)) do
            (push i factors)
            (setf n (/ n i))))
        (if (> n 2) (push n factors)) factors))

(find-prime-factors 13195) ; => (5 7 13 29)

(defun find-largest-prime-factor (n) 
  "find the largest prime factor of a given number n"
  (apply #' max (find-prime-factors n)))






