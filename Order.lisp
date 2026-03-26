; Frame Template for Menu Item
(defparameter menu_item
 '(frame
    (name menu_item)
    (slots
      (item_name)
      (price)
      (ingredients))))

; Frame Template for Customer
(defparameter customer
 '(frame
    (name customer)
    (slots
      (customer_name)
      (phone)
      (preferences))))

; Frame Template for Order
(defparameter order
 '(frame
    (name order)
    (slots
      (order_id)
      (customer_name)
      (item_ordered)
      (quantity)
      (total_price))))

; Instance of Menu Item
(defparameter pizza
 '(menu_item
    (item_name pizza)
    (price 250)
    (ingredients (cheese tomato dough))))

; Instance of Customer
(defparameter cust1
 '(customer
    (customer_name rahul)
    (phone 9876543210)
    (preferences spicy)))

; Instance of Order
(defparameter order1
 '(order
    (order_id 101)
    (customer_name rahul)
    (item_ordered pizza)
    (quantity 2)
    (total_price 500)))
(print pizza)
(print cust1)
(print order1)
