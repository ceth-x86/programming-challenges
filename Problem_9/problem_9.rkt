#lang racket

(define (show-answer a b c)
  (display a)
  (display "x")
  (display b)
  (display "x")
  (display c))

(define (problem_9 sum)
  (for*/first ([c (in-range 3 (- sum 2))]
               [b (in-range 2 c)]
               [a (in-range 1 b)]
               #:when (and (= (+ a b c) sum)
                           (= (+ (* a a) (* b b)) (* c c))))
    (show-answer a b c)))

(problem_9 1000)