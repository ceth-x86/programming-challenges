qsort :: [Integer] -> [Integer]
qsort [] = []
qsort (x:xs) = qsort small ++ mid ++ qsort large
	where 
		small = [ y | y <- xs, y < x]
		mid   = [ y | y <- xs, y == x] ++ [x]
		large = [ y | y <- xs, y > x]