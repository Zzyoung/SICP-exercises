(define (reverse list)
  (define (length items)
    (if (null? items)
        0
        (+ 1 (length (cdr items)))))
  (if (= (length list) 1)
      (car list)
      (cons (reverse (cdr list)) (car list))))