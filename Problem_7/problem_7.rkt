#lang racket

(define (search-limit num)
  (+ (floor (sqrt num)) 1))

(define (search-list num)
  (stream->list (in-range 2 (search-limit num))))

(define (divided? num x)
  (= (remainder num x) 0))

(define (list-of-dividers num)
  (filter (lambda (x)
            (divided? num x))         
       (search-list num)))

(define (prime? num)
  (= (length (list-of-dividers num)) 0))

(define (problem_7 current_prime primes counter)
  (cond
    [(< primes 10001)
     (cond
       [(prime? counter) (problem_7 counter (+ primes 1) (+ counter 1))]
       [else (problem_7 current_prime primes (+ counter 1))])]
    [else current_prime]))
    
(problem_7 0 0 0)
     