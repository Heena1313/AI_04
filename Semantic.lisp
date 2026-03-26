(setq net '())
;; Function to add relation
(defun add (source relation target)
  (push (list source relation target) net))
;; Function to display network
(defun show-net ()
  (dolist (triple net)
    (format t "~a -- ~a --> ~a~%"
            (first triple)
            (second triple)
            (third triple))))
;; Function to query
(defun query (node relation)
  (dolist (triple net)
    (when (and (equal (first triple) node)
               (equal (second triple) relation))
      (format t "~a~%" (third triple)))))
;; ----------------------------
;; Adding Knowledge (Diagram)
;; ---------------------------
;; ISA relationships
(add 'Human 'isa 'Living_thing)
(add 'Animal 'isa 'Living_thing)
(add 'Bird 'isa 'Living_thing)
(add 'Man 'isa 'Human)
(add 'Woman 'isa 'Human)
(add 'Cat 'isa 'Animal)
;; INST relationships
(add 'John 'inst 'Man)
(add 'Giraffe 'inst 'Animal)
(add 'Parrot 'inst 'Bird)
;; PROP relationships
(add 'Living_thing 'prop 'Breathe)
(add 'Living_thing 'prop 'Eat)
(add 'Human 'prop 'Two_legs)
(add 'Bird 'prop 'Fly)
(add 'Parrot 'prop 'Green)
(add 'Cat 'prop 'Fur)
(add 'Giraffe 'prop 'Tall)
(add 'Giraffe 'prop 'Long_legs)
;; ----------------------------
;; Execution
;; ----------------------------
(format t "Semantic Network:~%")
(show-net)
(format t "~%Properties of Bird:~%")
(query 'Bird 'prop)
(format t "~%Instance of Man:~%")
(query 'John 'inst)
