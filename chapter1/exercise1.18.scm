(define (even? n)
  (= (remainder n 2) 0))

(define (double x)
  (* 2 x))

(define (halve x)
  (/ x 2))

(define (product-iter a b product)
  (cond ((= b 0) product)
    ((even? b) (product-iter (double a) (halve b) product))
    (else (product-iter a (- b 1) (+ product a)))))

(define (product a b)
  (product-iter a b 0))