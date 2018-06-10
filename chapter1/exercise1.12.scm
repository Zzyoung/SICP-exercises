
(define (pascal row col)
  (cond ((or (= row 1) (= col 1) (= col row)) 1)
    (else (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col)))))
    