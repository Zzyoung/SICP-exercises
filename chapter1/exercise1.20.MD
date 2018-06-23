(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(gcd 206 40)

正则序：
(gcd 206 40)
(gcd 40 (remainder 206 40))
if (= b 0) 此处需要对(remainder 206 40)进行求值，为6; 6 !== 0
(gcd 6 (remainder 40 6))
if (= b 0) 此处需要对(remainder 40 6)进行求值，为4; 4 !== 0
(gcd 4 (remainder 6 4))
if (= b 0) 此处需要对(remainder 6 4)进行求值，为2; 2 !== 0
(gcd 2 (remainder 4 2))
if (= b 0) 此处需要对(remainder 4 2)进行求值，为0; 0 == 0

结果为2，执行了4次remainder运算。

应用序：
(gcd 206 40)
(gcd 40 (remainder 206 40)) 进行remainder运算 (gcd 40 6)
6 !== 0
(gcd 6 (remainder 40 6))  进行remainder运算 (gcd 6 4)
4 !== 0
(gcd 4 (remainder 6 4))  进行remainder运算 (gcd 4 2)
2 !== 0
(gcd 2 (remainder 4 2))  进行remainder运算 (gcd 2 0)
0 == 0

结果为2，执行了4次remainder运算。