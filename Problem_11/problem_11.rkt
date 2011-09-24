#lang racket

(require racket/file)

(define raw-data-path "problem_11.data")
(define solution-length 4)

(define (read-matrix path)
  (define str (file->string path))
  (for/list ([line (regexp-split #rx"\n" str)])
    (map string->number (regexp-split #rx" " line))))

(define (matrix-rows matrix)
  (length matrix))

(define (matrix-columns matrix)
  (length (first matrix)))

(define (matrix-ref matrix row col)
  (list-ref (list-ref matrix row) col))

(define (row-product matrix row col)
  (foldl * 1
         (for/list ([j (in-range col (+ col solution-length))])
           (matrix-ref matrix row j))))

(define (col-product matrix row col)
  (foldl * 1
         (for/list ([i (in-range row (+ row solution-length))])
           (matrix-ref matrix i col))))

(define (diag-product matrix row col)
  (foldl * 1
         (for/list ([i (in-range row (+ row solution-length))]
                    [j (in-range col (+ col solution-length))])
           (matrix-ref matrix i j))))

(define (reverse-diag-product matrix row col)
  (foldl * 1
         (for/list ([i (in-range row (- row solution-length) -1)]
                    [j (in-range col (+ col solution-length))])
           (matrix-ref matrix i j))))
  
(define (max-reverse-diag matrix)
  (apply max 
         (for*/list ([i (in-range (sub1 solution-length)
                                  (- (matrix-rows matrix) solution-length))]
                     [j (in-range (- (matrix-columns matrix)
                                     solution-length))])
           (reverse-diag-product matrix i j))))

(define (problem_11)
  (define matrix (read-matrix raw-data-path))
  (apply
   max
   (cons
    (max-reverse-diag matrix)
    (for*/list ([i (in-range (- (matrix-rows matrix) solution-length))]
                [j (in-range (- (matrix-columns matrix) solution-length))])
      (max (row-product matrix i j)
           (col-product matrix i j)
           (diag-product matrix i j))))))

(problem_11)