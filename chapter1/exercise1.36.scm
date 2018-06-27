(define tolerance 0.00001)

;打印每个guess，对比两个函数寻找不动点的过程
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (newline)
    (display guess)
    (let ((next (f guess)))
       (if (close-enough? guess next)
           next
           (try next))))
  (try first-guess))

;34步
(fixed-point (lambda (x) (/ (log 1000) (log x))) 2.0)

;9步
(fixed-point (lambda (x) (* 0.5 (+ (/ (log 1000) (log x)) x))) 2.0)