calculation result operation = [(operation first second)] ++ tail_of_result 
            where first = result !! 1
                  second = result !! 0
                  tail_of_result = (tail $ tail result)

calc = head $ foldl decision [] lst
     where lst = words "19 2.14 + 4.5 2 4.3 / - *"
           decision result element = case element of "+" -> (calculation result (+))
                                                     "-" -> (calculation result (-))
                                                     "*" -> (calculation result (*))
                                                     "/" -> (calculation result (/))
                                                     element -> [read element :: Float] ++ result       
                                     