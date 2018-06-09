(define (bigger-sum a b c) 
        (cond ((and (>= b c) (>= a c)) (+ a b))
              ((and (>= a b) (>= c b)) (+ a c))
              ((and (>= b a) (>= c a)) (+ b c))))