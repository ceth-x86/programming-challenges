problem_30 = sum $ filter equalsSumOfDigitsToFifth $ [2..maxVal]

-- функция для проверки на равенство числа и суммы пятых степеней 
-- ее чисел
equalsSumOfDigitsToFifth x = x == sumDigitsToFifth x

-- представление числа как сумма пятх степеней ее цифр
sumDigitsToFifth = sum . map (^5) . digitsOf

-- digitsOf 1234 -> [1, 2, 3, 4]
digitsOf x | x < 10 = [x]
           | otherwise = digitsOf (x `div` 10) ++ digitsOf(x `mod` 10)  

{- максимальное число, которое мы пытаемся представить как сумму пятых
   степеней. смысл в том, что n растет быстрее, чем разложение n  в 
   многочлен пятой степени  -}
maxVal = 10 ^ maxDigits  - 1
maxDigits = last $ takeWhile canHasDigits [1..]
canHasDigits n = allNines <= (sumDigitsToFifth allNines)
             where allNines = 10 ^ (n - 1) - 1

