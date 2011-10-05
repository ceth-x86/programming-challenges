#lang racket

(define (make-list start finish)
  (stream->list (in-range start finish)))

(define (problem_5 num)
  (apply lcm (make-list 1 (add1 num))))

(problem_5 20)