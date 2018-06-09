(define (a-plus-abs-b a b)
   ((if (> b 0) + -) a b))

当b大于0的时候，执行a+b；
当b小于0的时候，执行a-b。