module Main where
--- 1.1
main = putStrLn "Hello, world! from Main module"

--- 1.2

infixl 6 *+*

(*+*) a b = a ^ 2 + b ^ 2

l = 1 + 3 *+* 2 * 2

x |*| y = abs (x-y)

m = 5 |*| 7

i = logBase 4 (min 20 (9 + 7))

j =  logBase 4 $ min 20 $ 9 + 7