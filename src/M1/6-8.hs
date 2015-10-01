
--Реализуйте функцию, находящую сумму и количество цифр заданного целого числа.
--
--sum'n'count :: Integer -> (Integer, Integer)
--sum'n'count x = undefined
--
--GHCi> sum'n'count (-39)
--(12,2)


sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x =  (sum x, count x)
                 where
                    sum a   | a < 0 = sum (-a)
                            | a < 10 = a
                            | otherwise = (a `mod` 10) + sum (a `div` 10)
                    count a | a < 0 = count (-a)
                            | a < 10 = 1
                            | otherwise  = 1 + count (a `div` 10)
