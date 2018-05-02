#lang racket

; Problem 1
; If we list all the natural numbers below 10 that are multiples of 3 or 5, 
; we get 3, 5, 6 and 9. The sum of these multiples is 23.
; Find the sum of all the multiples of 3 or 5 below 1000.

(define (sumWhen pred? xs)
  (foldl (λ (n sum) (if (pred? n) (+ n sum) sum)) 0 xs))

(sumWhen (λ (n)
            (or (zero? (modulo n 3))
                (zero? (modulo n 5))))
         (range 1000))

; => 233168