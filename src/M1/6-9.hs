
--
--Реализуйте функцию, находящую значение определённого интеграла от заданной функции f на заданном интервале [a,b]
--методом трапеций. (Используйте равномерную сетку; достаточно 1000 элементарных отрезков.)
--
--integration :: (Double -> Double) -> Double -> Double -> Double
--integration f a b = undefined
--
--GHCi> integration sin pi 0
---2.0
--
--Результат может отличаться от -2.0, но не более чем на 1e-4.


integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b | a==b = 0
                  | a<b && b-a < 1e-7 = func f a b
                  | a<b = helper f a b 0 ((b-a)/1000)
                  | a>b = -(helper f b a 0 ((a-b)/1000))
                where
                helper f a b acc h | b-a <1e-7 = acc
                   | otherwise = helper (f) (a+h) (b) (acc + func f a (a+h)) h
                func f a b = (f a + f b)*(b-a)/2


