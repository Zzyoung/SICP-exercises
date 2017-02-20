;递归实现

(define (f-recursion x)
  (cond ((= x 2) 2)
        ((= x 1) 1)
        ((= x 0) 0)
        (else (+ (recursion-f (- x 1))
                 (* (recursion-f (- x 2)) 2)
                 (* (recursion-f (- x 3)) 3)))))

;迭代实现

(define (f-iter a b c count)
  (cond ((= count 0) c)
        ((= count 1) b)
        ((= count 2) a)
        (else (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1)))))

(define (f n)
  (f-iter 2 1 0 n))