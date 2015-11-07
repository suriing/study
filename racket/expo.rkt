#lang racket
(define (expo a n)
  (define (expo-iter a n rep product)
    (if (= n rep)
        product
        (expo-iter a n (+ rep (/ n (abs n))) (if (< n 0) (/ product a) (* product a)))))
  (expo-iter a n 0 1))
