#lang racket

(define (sum-of-squares nums)
  (foldl + 0 (map (λ [x] (* x x)) nums)))

(define (square-of-sum nums)
  (let ([sum (foldl + 0 nums)])
    (* sum sum)))

(define problem_6 
  (let ([nums (stream->list (in-range 1 (add1 100)))])
    (- (square-of-sum nums)
       (sum-of-squares nums))))

problem_6
