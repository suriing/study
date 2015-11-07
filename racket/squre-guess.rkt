#lang racket
(define (squre-guess a tol)
  (define (squre-guess-iter a b c tol)
    (if (< (abs (- b c)) tol)
        (exact->inexact b)
        (squre-guess-iter a (/ (+ b c) 2) (/ a (/ (+ b c) 2)) tol)))
  (squre-guess-iter a 1 a tol))
