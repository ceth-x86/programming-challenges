data SieveElement = SieveElement { index :: Int,
                                   flag ::  Bool 
                                   } deriving (Show)
sieve [] n = []
sieve (candidate:other) n
      | cond == False = [SieveElement element False] ++ (sieve other n)
      | element > n, remainder == 0 = [SieveElement element False] ++ (sieve other n)
      | element > n, remainder /= 0 = [SieveElement element True] ++ (sieve other n) 
      | otherwise = [candidate] ++ (sieve other n)
      where element = index candidate
            cond = flag candidate
            remainder = element `rem` n

make_step lst i n
          | i < n = make_step (sieve lst i) (i + 1) n
          | otherwise = lst

solution n = [2] ++ [index i | i <- filtered]
         where lst = [SieveElement i True | i <- [3, 5 .. n]]
               processed = make_step lst 3 n
               filtered = filter (\x -> flag x == True) processed


