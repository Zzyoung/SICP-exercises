;n k返回都是1，所以这个写反了的方法也能得到正确的结果
(define (cont-frac n d k)
  (if (= k 0)
    0
    (/ (n k) (+ (d k) (cont-frac n d (- k 1))))))

(define (cont-frac n d k)
  (define (temp i)
    (if (= k i)
      (/ (n k) (+ (d k)))
      (/ (n i) (+ (d i) (temp (+ i 1))))))
  (temp 1))

(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           k)

;k=10, 函数结果0.6179775280898876  
;k=20, 函数结果0.6180339850173578         
;k=15, 函数结果0.6180344478216819
;k=12, 函数结果0.6180257510729613
;k=11, 函数结果0.6180555555555556

;所以当k至少取11时，才会得到具有4位精度的黄金分割率


;2)迭代写法
(define (cont-frac n d k)
  (define (cont-frac-iter i result)
    (if (= i k)
      (/ (n k) (+ (d k) result))
      (cont-frac-iter (+ i 1) (/ (n i) (+ (d i) result)))))
  (cont-frac-iter 1 0))
