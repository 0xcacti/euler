(defun check-pythagorean-triplet (a b c)
  (if (and (< a b) (< b c))
      (if (= (+ (* a a) (* b b)) (* c c))
          t
          nil)
      nil))

(defparameter *sum* 1000)

(defun find-triplet ()
  (loop for a from 1 to *sum*
        do (loop for b from (+ a 1) to *sum* 
                 do (loop for c from (+ b 1) to *sum*
                          do (if (check-pythagorean-triplet a b c)
                                 (if (= (+ a b c) *sum*)
                                     (return-from find-triplet (* a b c))))))))
