#lang racket
(define (smallest-divisor a)
  (define (sd-iter a b)
    (if (= (remainder a b) 0)
        b
        (sd-iter a (+ b 1))))
    (sd-iter a 2))
