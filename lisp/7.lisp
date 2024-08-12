(defun is-prime (n)
  (if (<= n 1)
      nil 
      (let ((i 2))
        (loop while (<= i (sqrt n))
            do (if (zerop (mod n i))
                (return-from is-prime nil)
                (setq i (+ i 1))))
        t)))

(defun get-nth-prime (n)
  (let ((i 0) (j 0))
    (loop while (< i n)
        do 
        (setq j (+ j 1))
        (if (is-prime j)
            (setq i (+ i 1)))
        finally (return j))))





