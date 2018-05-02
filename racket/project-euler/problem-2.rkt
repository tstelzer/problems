#lang racket

; Each new term in the Fibonacci sequence is generated by adding
; the previous two terms. By starting with 1 and 2, the first 10 terms will be:

; 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

; By considering the terms in the Fibonacci sequence whose values do not exceed
; four million, find the sum of the even-valued terms.

(define (stream-fib ceil)
  (define (loop [xs '()] [a 0] [b 1])
    (if (> (+ a b) ceil)
        xs
        (loop (stream-cons (+ a b) xs) b (+ a b))))
  (loop))

(define (stream-sum s)
  (stream-fold + 0 s))

(stream-sum (stream-filter even? (stream-fib (* 4 (expt 10 6)))))

; => 4613732