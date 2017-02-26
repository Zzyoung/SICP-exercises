(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) nil sequence))