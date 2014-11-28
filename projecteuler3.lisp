;; The prime factors of 13195 are 5, 7, 13 and 29.

;; What is the largest prime factor of the number 600851475143 ?

(defun isprime (num)
  (cond ((evenp num) nil)
	(t (do ((cur 2 (+ 1 cur)))
	       ((> cur (isqrt num)) (return t))
	     (if (= (mod num cur) 0)
		 (return nil))))))

(defun find-factors (num)
  (let ((factors (list 1 num)))
    (do ((cur 2 (+ 1 cur)))
	((> cur (isqrt num)) factors)
      (if (= (mod num cur) 0)
	  (setq factors (append factors (list cur (/ num cur))))))))

(defun get-prime-factors (number)
  (let ((prime-factors (list)))
    (loop for num in (find-factors number) do
	 (if (isprime num)
	     (setq prime-factors (append prime-factors (list num)))))
    (setq prime-factors prime-factors)))

(defun >-in-list (l)
  (let ((greatest 0))
    (loop for num in l do
	 (if (> num greatest)
	     (setq greatest num)))
    (setq greatest greatest)))

(>-in-list (get-prime-factors 600851475143))
