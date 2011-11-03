#lang racket

;; максимальное число, которое мы пытаемся представить как сумму пятых
;; степеней. смысл в том, что n растет быстрее, чем разложение n  в 
;; многочлен пятой степени
(define (maxVal)
  (local
    ((define (maxVal)
       (- (expt 10 (maxDigits 0)) 1))
     
     (define (maxDigits n)
       (cond
         [(canHasDigits n) (maxDigits (+ n 1))]
         [else (- n 1)]))
     
     (define (canHasDigits n)
       (local
         ((define (canHasDigits n)
            (<= (allNines n) (sumDigitsToFifth (allNines n))))
     
          (define (allNines n)
            (- (expt 10 (- n 1)) 1)))
    
         (canHasDigits n))))
    
    (maxVal)))

;; список цифр, которые есть смысл проверять
(define (allTestedValues)
  (build-list (- (maxVal) 1) (lambda (x) (+ x 2))))


;; (num->list 12345) -> '(1 2 3 4 5)
(define (num->list n)
  (local 
    ((define (num->list n)
       (map (lambda (c)
              (char->num c))
            (string->list (number->string n))))

    (define (char->num c)
      (- (char->integer c) 48)))
    
    (num->list n)))

(define (sumDigitsToFifth n)
  (foldl + 0
         (map (lambda (num)
                (expt num 5))
              (num->list n))))

(define (equalsSumOfDigitsToFifth n)
  (= n (sumDigitsToFifth n)))

(define (problem_30)
  (foldl + 0
         (filter equalsSumOfDigitsToFifth (allTestedValues))))
  
(problem_30)  