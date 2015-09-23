module M139 where

import Data.Char

twoDigits2Int :: Char -> Char -> Int
twoDigits2Int a b = if isDigit a && isDigit b then digitToInt a * 10 + digitToInt b :: Int else 100 :: Int