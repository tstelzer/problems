#lang racket

(require "util.rkt")

; A palindromic number reads the same both ways. The largest palindrome made
; from the product of two 2-digit numbers is 9009 = 91 × 99.  Find the largest
; palindrome made from the product of two 3-digit numbers.

(apply max (for*/list ([j (in-range 100 1000)]
                       [i (in-range 100 1000)]
                       #:when (palindrome? (* i j)))
             (* i j)))

; => 906609
