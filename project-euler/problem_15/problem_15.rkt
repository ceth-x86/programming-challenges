#lang racket

(define (corner? coord)
  (and (= (car coord) 0) (= (cdr coord) 0)))

(define (side? coord)
  (or (= (car coord) 0) (= (cdr coord) 0)))

(define get-total-paths
  (let ([memo (make-hash)])
    (λ (coord)
      (cond ((corner? coord) 0)
            ((side? coord) 1)
            ((hash-has-key? memo coord) (hash-ref memo coord))
            (else (let ([paths (+ (get-total-paths (cons (sub1 (car coord)) (cdr coord)))
                                  (get-total-paths (cons (car coord) (sub1 (cdr coord)))))])
                    (hash-set! memo coord paths)
                    paths))))))

(define (problen_15 rows cols)
  (get-total-paths (cons rows cols)))

(problem_15 20 20)