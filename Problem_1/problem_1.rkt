#lang racket

(define (accum? num)
  (or (= (modulo num 3) 0) (= (modulo num 5) 0)))
  
(define (helper i limit accum)
  (cond 
    [(= i limit) accum]
    [else 
     (cond 
       [(accum? i) (helper (+ i 1) limit (+ accum i))]
       [else (helper (+ i 1) limit accum)])]))
           
(define (problem1 limit)
  (helper 0 limit 0))

(problem1 1000)