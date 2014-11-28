;; If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

;; Find the sum of all the multiples of 3 or 5 below 1000.
(do ((sum 0 (+ sum (if (or (= (mod cur 3) 0) (= (mod cur 5) 0))
		       (+ cur 0)
		       (- cur cur))))
     (cur 0 (+ cur 1)))
    ((>= cur 1000) sum))
