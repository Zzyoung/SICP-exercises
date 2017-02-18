(define (>= x y)
  (not (< x y)))
(define (bigger-sum a b c) 
        (cond ((and (>= (+ a b) (+ a c)) (>= (+ a b) (+ b c))) (+ a b))
               ((and (>= (+ a c) (+ b c)) (>= (+ a c) (+ a b))) (+ a c))
               ((and (>= (+ b c) (+ a c)) (>= (+ b c) (+ a b))) (+ b c))))