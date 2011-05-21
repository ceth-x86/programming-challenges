euler1 :: Int
euler1 = sum[x | x <- [1..999], x `mod` 5 == 0 || x `mod` 3 == 0]