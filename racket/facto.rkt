#lang racket
(define (facto a)
  (define (facto-iter a b c)
    (if (= a b)
        c
        (facto-iter a (+ b 1) (* c (+ b 1)))))
  (facto-iter a 1 1))
