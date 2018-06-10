(define (even? n)
  (= (remainder n 2) 0))

(define (expt-iter b counter product)
  (cond ((= counter 0) product)
        ((even? counter) (expt-iter (square b) (/ counter 2) product))
        (else (expt-iter b (- counter 1) (* product b)))))

(define (fast-expt b n)
  (expt-iter b n 1))
