#lang racket

(define (number->list n)
  (string->list (number->string n)))

(define (palindrome? n)
  (equal? (reverse (number->list n)) (number->list n)))

(provide (all-defined-out))
