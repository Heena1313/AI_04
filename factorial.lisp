(defun factorial (n)
  (if (= n 0) ; base case
      1
      (* n (factorial (- n 1))))) ; recursive call

; call factorial of 5; evaluates to 120
(print (factorial 5))
