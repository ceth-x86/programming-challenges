divides x y = y `mod` x == 0

isPrime n = all (not . flip divides n) $ takeWhile (\x -> x * x <= n) primes

primes = 2 : filter isPrime [3, 5 ..]

main = do
     print $ primes !! 10000