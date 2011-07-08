fib :: Int -> Int
fib 1 = 1
fib 2 = 2
fib x = fib(x-1) + fib(x-2)

fibOptimized :: Int -> Int
fibOptimized n = table !! n
  where 
  table = 0 : 1 : zipWith (+) table (tail table)

euler_2  = (sum . takeWhile (< 4000000)) 
             [x | x <- map fibOptimized [2 .. ], even x]