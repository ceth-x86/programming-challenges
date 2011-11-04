problem_20 :: Int
problem_20 = sum $ digitsOf $ fac 100 

fac :: Integer -> Integer
fac 1 = 1
fac n = n * fac (n - 1)

digitsOf :: Integer -> [Int]
digitsOf n 
         | n < 10 = [fromInteger n]
         | otherwise = digitsOf (n `div` 10) ++ digitsOf(n `mod` 10)

         