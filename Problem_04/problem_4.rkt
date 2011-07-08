#lang racket

(define (palindrome? str)
  (equal? str (list->string(reverse (string->list str))))
  )

(define list-of-numbers 
            (for*/list ([i (in-range 999)]
                      [j (in-range 999)])
            (number->string (* i j))))

(define list-of-polindromes
    (map string->number
         (filter palindrome? list-of-numbers)))
  
  
(define problem_4
  (foldr max 0 list-of-polindromes))

problem_4