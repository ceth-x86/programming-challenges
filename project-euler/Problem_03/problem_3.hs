divides x y = y `mod` x == 0

primes = primesWorker [2..] 
       where
        primesWorker (x:xs) = x : (primesWorker $ filter (not . divides x) xs)

primeFactors n = primeFactorsWorker n primes 
             where
                primeFactorsWorker n (p:ps)
                     | n == 1        = []
                     | p `divides` n = p : primeFactorsWorker (n `div` p) (p:ps)
                     | otherwise     = primeFactorsWorker n ps

main = do
     print $ maximum $ primeFactors 600851475143