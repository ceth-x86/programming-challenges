import Data.List

data Polindrom = Polindrom { a :: Integer,
                             b :: Integer,
                             c :: Integer }  deriving (Show)

euler_4 = head sortedList
        where
                sortedList = Data.List.sortBy compareFunction list
                compareFunction x y = compare (c y) (c x)
                list = [ p | y <- [100..999],
                             z <- [100..999],
                             let x = y * z,
                             let p = Polindrom { a = y, b = z, c = x },
                             let s = show x,
                             s == reverse s]