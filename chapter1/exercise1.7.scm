(define (good-enouth? prevGuess guess)
  (< (abs (- prevGuess guess)) 0.0001))


(define (sqrt-iter guess prevGuess x)
  (if (good-enouth? prevGuess guess)
    guess
    (sqrt-iter (improve guess x) 
               guess 
               x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))