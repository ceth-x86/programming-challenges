#lang racket

(require "string-split-function.rkt")

(define expression "19 2.14 + 4.5 2 4.3 / - *")

(define (calculation operation stack)
  
  (define (rest-2 lst)
    (rest (rest lst)))
  
  (define a (string->number (second stack)))
  (define b (string->number (first stack)))

  (cons 
   (number->string (operation a b))
   (rest-2 stack))
  )  

(define (calc str)
  (foldl 
   (lambda(element result)
     (cond       
       [(string=? element "+") (calculation + result)]
       [(string=? element "*") (calculation * result)]
       [(string=? element "-") (calculation - result)]
       [(string=? element "/") (calculation / result)]       
       [else
        (cons element result)]
       )     
     )
   empty (string-split str)
   )
  )

(calc expression)
