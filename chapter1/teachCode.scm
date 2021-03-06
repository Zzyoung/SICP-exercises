(define tolerance 0.00001)

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

(define (average x y)
  (/ (+ x y) 2))

;查找零点的终止条件
(define (close-enough? x y)
  (< (abs (- x y)) 0.001))

;查找函数f在给定范围的零点
(define (search f neg-point pos-point)
  (let ((midpoint (average neg-point pos-point)))
    (if (close-enough? neg-point pos-point)
      midpoint
      (let ((test-value (f midpoint)))
        (cond ((positive? test-value) (search f neg-point midpoint))
              ((negative? test-value) (search f midpoint pos-point))
              (else midpoint))))))
            
;查找之前判断范围是否正确
(define (half-interval-method f a b)
  (let ((a-value (f a))
        (b-value (f b)))
    (cond ((and (negative? a-value) (positive? b-value)) (search f a b))
          ((and (negative? b-value) (positive? a-value)) (search f b a))
          (else (error "Values are not of opposite sign" a b)))))

(half-interval-method (lambda (x) (- (* x x) 4)) -3.0 1.0)

;1.34
(define dx 0.00001)

;计算函数g的导数
(define (deriv g)
  (lambda (x) 
    (/ (- (g (+ x dx)) (g x))
      dx)))

(define (newton-transform g)
  (lambda (x) 
    (- x (/ (g x) ((deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(define (sqrt x)
  (newtons-method (lambda (y) (- (square y) x))
                  1.0))