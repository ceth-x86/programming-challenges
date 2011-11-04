#lang racket

(define (fac n)
  (cond
    [(= n 1) 1]
    [else (* n (fac (- n 1)))]))

;; (num->list 12345) -> '(1 2 3 4 5)
(define (num->list n)
  (local 
    ((define (num->list n)
       (map (lambda (c)
              (char->num c))
            (string->list (number->string n))))

    (define (char->num c)
      (- (char->integer c) 48)))
    
    (num->list n)))

(define problem_20
  (foldl + 0
         (num->list (fac 100))))

problem_20
