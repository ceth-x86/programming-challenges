#lang racket

(require racket/stream)

(define fib_stream
  (let loop ([a 1] [b 2])
    (stream-cons a (loop b (+ a b)))))

(define (problem_2 limit)
  (let loop ([fib fib_stream] [sum 0])
    (let ([n (stream-first fib)])
      (if (>= n limit)
          sum
          (loop (stream-rest fib) (+ sum (if (even? n) n 0)))))))

(problem_2 4000000)
