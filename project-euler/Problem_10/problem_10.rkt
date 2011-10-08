#lang racket

(define (two+ i)
  (+ i 2))

(define primes
  (stream-cons
   2
   (let loop ([candidate 3]
              [p primes])
     (define limit (integer-sqrt candidate))
     (define current-prime (stream-first p))
     (if (> current-prime limit)
         (stream-cons candidate (loop (two+ candidate) primes))
         (begin
           (if (= (modulo candidate current-prime) 0)
               (loop (two+ candidate) primes)
               (loop candidate (stream-rest p))))))))

(define (prime-factors num)
  (let loop ([n num]
             [factors '()])
    (if (= n 1)
        factors
        (let next-prime ([p primes])
          (define p1 (stream-first p))
          (if (= (modulo n p1) 0)
              (loop (/ n p1) (cons p1 factors))
              (next-prime (stream-rest p)))))))

(define (problem_10 limit)
  (let loop ([primes primes]
             [sum 0])
    (define p (stream-first primes))
    (if (>= p limit)
        sum
        (loop (stream-rest primes) (+ sum p)))))

(problem_10 2000000)