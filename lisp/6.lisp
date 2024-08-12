(defun sum-of-squares (n)
  (let ((sum 0))
    (dotimes (i (+ n 1))
      (incf sum (* i i)))
    sum))

(defun square-of-sums (n)
  (let ((sum 0))
    (dotimes (i (+ n 1))
      (incf sum i))
    (* sum sum)))

(defun difference-of-squares (n)
  (- (square-of-sums n) (sum-of-squares n)))
