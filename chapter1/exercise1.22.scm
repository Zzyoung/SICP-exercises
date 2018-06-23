; 依赖上一题
(define (prime? n)
  (= n (smallest-divisor n)))

; 记录开始时间
(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

; 进行素数检测，如果是素数就调用repoart-prime
(define (start-prime-test n start-time)
  (if (prime? n)
    (report-prime (- (runtime) start-time))
    #f))

;打印消耗的时间
(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time)
  #t)

;处理偶数的情况
(define (search-for-primes n count)
  (if (odd? n)
    (search n count)
    (search (+ n 1) count)))

;检查给定范围内连续的各个奇数的素性
(define (search n count)
  (if (= count 0)
    (display " end ")
    (if (timed-prime-test n)
      (search (+ n 2) (- count 1))
      (search (+ n 2) count))))

(search-for-primes 1001 3)
(search-for-primes 10001 3)
(search-for-primes 100001 3)