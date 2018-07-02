(define (double f)
  (lambda (x) (f (f x))))

(define (inc x) (+ 1 x))

;结果:21
(((double (double double)) inc) 5)

;inc +1
;double(inc) +2
;2次double   +4
;3次double   +8
;4次double   +16