(defvar *secret* "Hello world")
(defvar *secret-formatted* "")

(defun format-secret ()
  (loop for c across *secret* do (if (not (= " " c)) (setq *secret-formatted* (concatenate 'string *secret-formatted* "_")))))
