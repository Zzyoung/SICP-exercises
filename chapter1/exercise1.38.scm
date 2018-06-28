(define (cont-frac n d k)
  (define (temp i)
    (if (= k i)
      (/ (n k) (+ (d k)))
      (/ (n i) (+ (d i) (temp (+ i 1))))))
  (temp 1))

(define (f i)
  (cond ((<= i 2) i)
        ((= (remainder (- i 2) 3) 0) (* 2 (+ 1 (/ (- i 2) 3))))
        (else 1)))

;e-2为该函数的结果
(cont-frac (lambda (i) 1.0)
           f
           k)           

;k=20,函数结果为0.7182818284590452

;e的近似值就是2.7182818284590452