(define (last-pair list)
  (define (length items)
    (if (null? items)
        0
        (+ 1 (length (cdr items)))))
  (if (= (length list) 1)
      (car list)
      (last-pair (cdr list))))