
fibonacci :: Integer -> Integer
fibonacci n | n==0 = 0
            | n==1 = 1
            | n==(-1) = 1
            | n>0 = helper 0 1 n
            | n<0 = helper 0 1 n


helper a b 0 = a
helper a b c | c>0 = helper (a+b) a (c-1)
             | c<0 = helper (-a+b) a (c+1)
