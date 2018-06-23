;计算(base^exp)%m
(define (expmod base exp m)
  (cond ((= exp 0) 1)
    ((even? exp) 
      (remainder (square (expmod base (/ exp 2) m))
        m))
    (else 
      (remainder (* base (expmod base (- exp 1) m))
        m))))

(define (check-prime a n)
  (if (= a 1)
    (display "是素数")
    (if (= (expmod a n n) (remainder a n))
      (check-prime (- a 1) n)
      (display "不是素数"))))

(define (check n)
  (check-prime (- n 1) n))