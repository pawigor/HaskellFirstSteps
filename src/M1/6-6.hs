
--Реализуйте функцию seqA, находящую элементы следующей рекуррентной последовательности
--a0=1;a1=2;a2=3;ak+3=ak+2+ak+1−2ak.
--
--Попытайтесь найти эффективное решение.
seqA :: Integer -> Integer
seqA n | n==0 = 1
       | n==1 = 2
       | n==2 = 3
       | n>0 = helper 1 2 3 n

helper a b c 0 = a
helper a b c d = let
                    h a b c = c+b-2*a
                 in helper b c (h a b c) (d-1)