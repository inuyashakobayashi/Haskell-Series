module Serie3 where

import Data.Char

myLength :: [a] -> Integer
myLength [] = 0
myLength (x : xs) = 1 + myLength xs

mySum [] = 0
mySum xs = foldl (\acc x -> acc + x) 0 xs

-- besser mit foldl (+) 0

stringConcat :: [[a]] -> [a]
stringConcat [] = [] -- Basisfall: leere Liste
stringConcat (x : xs) = x ++ stringConcat xs -- Rekursiver Fall

fun3 :: (Eq b) => (b, a, b) -> (a, b, Bool)
fun3 (a, b, c) = if a /= c then (b, a, True) else (b, a, False)

apply f a = f a

applyList f (x : xs) = map f (x : xs)

applyString f (x : xs) = map (toUpper . f) (x : xs)

fun4 a b c = (a * b, c)

fun5 p = (* 9) : []