#lang racket
    
(provide string-split)

(define (string-split str)

  (define (char->string c)
    (make-string 1 c))

  (define (string-first-char str)
    (string-ref str 0))

  (define (string-first str)
    (char->string (string-ref str 0)))

  (define (string-rest str)
    (substring str 1 (string-length str)))

  (define (string-split-helper str chunk lst)
  (cond 
    [(string=? str "") (reverse (cons chunk lst))]
    [else
     (cond
       [(char=? (string-first-char str) #\space) (string-split-helper (string-rest str) "" (cons chunk lst))]
       [else
        (string-split-helper (string-rest str) (string-append chunk (string-first str)) lst)]
       )
     ]
    )
  )
  
  (string-split-helper str "" empty)
  )

