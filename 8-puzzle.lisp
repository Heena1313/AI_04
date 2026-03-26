(defparameter *goal-state*
  '(1 2 3
    4 5 6
    7 8 0))
(defun heuristic (state)
  (count-if-not #'zerop
    (mapcar #'(lambda (s g)
                (if (= s g) 0 1))
            state *goal-state*)))
(defun blank-position (state)
  (position 0 state))
(defun swap (state i j)
  (let ((new (copy-list state)))
    (rotatef (nth i new) (nth j new))
    new))
(defun successors (state)
  (let* ((pos (blank-position state))
         (moves '()))
    (when (>= pos 3)
      (push (swap state pos (- pos 3)) moves))
    (when (< pos 6)
      (push (swap state pos (+ pos 3)) moves))
    (when (/= (mod pos 3) 0)
      (push (swap state pos (- pos 1)) moves))
    (when (/= (mod pos 3) 2)
      (push (swap state pos (+ pos 1)) moves))
    moves))
(defun hill-climbing (initial-state)
  (let ((current initial-state))
    (loop
      (format t "~%Current State: ~a  Heuristic: ~a"
              current (heuristic current))
      (when (= (heuristic current) 0)
        (return current))
      (let* ((neighbors (successors current))
             (best (car (sort neighbors #'< :key #'heuristic))))
        (if (>= (heuristic best) (heuristic current))
            (return current)
            (setf current best))))))
(defparameter *initial-state*
  '(1 2 3
    4 0 6
    7 5 8))
(hill-climbing *initial-state*)
