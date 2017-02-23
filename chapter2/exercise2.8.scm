(define (sub-interval x y)
  (add-interval x
                (make-interval (* -1 (upper-bound y)))
                (make-interval (* -1 (lower-bound y)))))