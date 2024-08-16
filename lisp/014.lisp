(defparameter *seq* (make-hash-table))
(setf (gethash 1 *seq*) 1)

(defun next (n)
  (if (evenp n)
      (/ n 2)
    (+ (* n 3) 1)))

(defun collatz-length (n)
  (or (gethash n *seq*)
      (let ((length (1+ (collatz-length (next n)))))
        (setf (gethash n *seq*) length)
        length)))

(defun longest-seq ()
  (let ((max 0)
        (max-start 1))
    (loop for i from 1 below 1000000 do
      (let ((length (collatz-length i)))
        (when (> length max)
          (setf max length)
          (setf max-start i))))
    max-start))
