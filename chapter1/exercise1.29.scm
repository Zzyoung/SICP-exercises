(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
           (sum term (next a) next b))))

(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (y k)
    (f (+ a (* k h))))
  (define (next k)
    (+ k 1))
  (define (term index)
    (cond ((= index 0) (y index))
          ((= index n) (y index))
          ((odd? index) (* 4 (y index)))
          (else (* 2 (y index)))))
  (* (/ h 3.0) 
     (sum term 0 next n)))
