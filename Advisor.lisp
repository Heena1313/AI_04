;; STUDENT COURSE C CAREER ADVISOR EXPERT SYSTEM
(defun career-advisor ()
(format t "~%***** STUDENT CAREER ADVISOR *****~%")
;; Step 1: User data collection
(format t "~%Enter your interest (programming biology business design): ") (let ((interest (read)))
(format t "Enter your skill level (low medium high): ") (let ((skill (read)))
(format t "Enter your academic performance (average good excellent): ") (let ((performance (read))
(course nil) (career nil))
;; Step 2: Inference Engine (Rule-based recommendations) (cond
((and (eq interest 'programming) (eq skill 'high))
(setq course 'computer-science career 'software-developer)) ((and (eq interest 'biology) (eq performance 'excellent))
(setq course 'biotechnology career 'research-scientist)) ((eq interest 'business)
(setq course 'business-administration career 'manager)) ((eq interest 'design)
(setq course 'graphic-design career 'designer)) (t
(setq course 'general-studies career 'career-counseling)))


;; Step 3: Output recommendation
(format t "~%--- RECOMMENDED PATH ---~%")


(format t "Suggested Course : ~a~%" course) (format t "Possible Career : ~a~%~%" career)))))

;; Run the system (career-advisor)
