#lang racket
(define (Great-Common-Divisor a b)
  (define (GCD-iter a b)
    (if (= b 0)
        a
        (GCD-iter b (- a (* b (floor (/ a b)))))))
  (GCD-iter a b))
