(defun power (x y)
  (if (= y 0)
      1
      (* x (power x (- y 1)))
  )
)
(format t "3 to power 4 is : ~D" (power 3 4))
