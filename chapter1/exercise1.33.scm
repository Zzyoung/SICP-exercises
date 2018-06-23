(define (filtered-accumulate filter combiner null-value term a next b)
  (cond ((> a b) null-value)
        ((filter a) 
          (combiner 
            (term a)
            (filtered-accumulate filter combiner null-value term (next a) next b)))
        (else (filtered-accumulate filter combiner null-value term (next a) next b))))

;假设已经存在检测素数的过程 prime?
(define (sum-prime term a next b)
  (define (plus a b)
    (+ a b))  
  (filtered-accumulate prime? plus 0 term a next b))

(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (remainder a b))))

(define (product-prime term a next b)
  (define (product a b)
    (* a b))
  (define (prime? a)
    (= 1 (gcd a b)))
  (filtered-accumulate prime? product 1 term a next b))