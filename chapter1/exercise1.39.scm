(define (cont-frac n d k)
  (define (temp i)
    (if (= k i)
      (/ (n k) (+ (d k)))
      (/ (n i) (- (d i) (temp (+ i 1))))))
  (temp 1))

(define (tan-cf x k)
  (define (n i)
    (if (= i 1)
      x
      (* x x)))
  (define (d i)
    (- (* 2.0 i) 1.0))
  (cont-frac n d k))

;k越大，结果越精确