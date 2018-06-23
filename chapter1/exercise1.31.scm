; a)
(define (product term a next b)
    (if (> a b)
        1
        (* (term a)
           (product term (next a) next b))))

(define (term a)
  (/ (* (- a 1) (+ a 1))
     (* a a)))

(define (next a)
  (+ a 2))

(define (pi-product a b)
  (* 4.0
     (product term a next b)))

(define pi (pi-product 3 1000))

; b)
(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (* result (term a)))))
  (iter a 1))

(define (pi-product-iter a b)
  (* 4.0
     (product-iter term a next b)))

(pi-product-iter 3 1000)