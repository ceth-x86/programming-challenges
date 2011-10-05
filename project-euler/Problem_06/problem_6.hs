euler6 :: Int
euler6 = sum [x | x <- [1..100]] * sum [x | x <- [1..100]] - sum [ x * x | x <- [1..100]]