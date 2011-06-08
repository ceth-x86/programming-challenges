#lang racket

(define (problem_3 num)
  
  (define (helper num f)
  (cond 
    [(<= num 1) f]
    [else (cond
            [(= (remainder num f) 0) (helper (/ num f) f)]
            [else (helper num (+ f 1))])]))
  
  (helper num 2))

(problem_3 600851475143)
    
  