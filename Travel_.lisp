(defun travel-itinerary ()
  (let ((destination nil)
        (budget nil)
        (days 0))
    (format t "~%------ Travel Itinerary Expert System ------~%")
    (format t "Enter destination type (beach/mountain/city): ")
    (setf destination (read))
    (format t "Enter budget (low/medium/high): ")
    (setf budget (read))
    (format t "Enter number of travel days: ")
    (setf days (read))
    ;; Transportation suggestion
    (format t "~%Transportation Suggestion:~%")
    (cond
      ((eq destination 'beach)
       (format t "Recommended Transport: Train or Flight.~%"))
      ((eq destination 'mountain)
       (format t "Recommended Transport: Bus or Car.~%"))
      ((eq destination 'city)
       (format t "Recommended Transport: Train, Bus, or Flight.~%"))
      (t
       (format t "No transport data available.~%")))

    ;; Accommodation suggestion
    (format t "~%Accommodation Suggestion:~%")
    (cond
      ((eq budget 'low)
       (format t "Stay in Budget Hotels or Hostels.~%"))
      ((eq budget 'medium)
       (format t "Stay in 3-Star Hotels or Guest Houses.~%"))
      ((eq budget 'high)
       (format t "Stay in Luxury Resorts or 5-Star Hotels.~%"))
      (t
       (format t "Budget option not recognized.~%")))
    ;; Activities suggestion
    (format t "~%Suggested Activities:~%")
    (cond
      ((eq destination 'beach)
       (format t "Swimming, Water Sports, Sunset Viewing.~%"))
      ((eq destination 'mountain)
       (format t "Trekking, Camping, Nature Photography.~%"))
      ((eq destination 'city)
       (format t "City Tours, Museums, Shopping.~%"))
      (t
       (format t "No activity suggestions available.~%")))
    (format t "~%Your trip is planned for ~A days. Enjoy your travel!~%" days)
  )
)

(travel-itinerary)
