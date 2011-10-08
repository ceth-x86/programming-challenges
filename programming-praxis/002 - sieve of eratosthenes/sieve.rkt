#lang racket

;; (sequence 3 10 3) -> '(3 6 9)
(define (sequence start stop step)
  (if (> start stop)
      empty
      (cons start (sequence (+ start step) stop step))))
 
;; (strike '(3 4 5 6 8 9) 4 2) -> '(3 5 9)
(define (strike lst start step)
  (cond ((null? lst) lst)
        ;; skip the num
        ((= (first lst) start) (strike (rest lst) (+ start step) step))
        ;; keep the num and move start-pointer (this num will be stored on next step)
        ((> (first lst) start) (strike lst (+ start step) step))
        ;; store all nums before the start
        (else (cons (first lst) (strike (rest lst) start step)))
        ))
 
(define (primes limit)
  (let ((stop (sqrt limit)))
    (define (sieve lst)
      (let ((p (first lst)))
        (if (> p stop)
            lst
            (cons p (sieve (strike (rest lst) (* p p) p))))))
    (sieve (sequence 2 limit 1)))
  )
 
(display (primes 100))
(newline)