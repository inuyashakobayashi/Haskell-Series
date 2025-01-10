module Serie3 where

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

applyString f "" = ""
applyString f (x : xs) = f x : applyString f xs

fun4 a b c = (a * b, c)

fun5 p = (* 9) : []

intersect :: (Eq b) => (a -> b) -> (a -> b) -> [a] -> [(a, b)]
intersect f g xs = [(a, f a) | a <- xs, b <- xs, f a == g b]

higherFunktion f1 f2 a = if f1 a > f2 a then f1 a else f2 a

nospace :: String -> (String, Integer)
nospace xs = (filter (/= ' ') xs, fromIntegral (length (filter (== ' ') xs)))


input = [1, -5, 3, 0, 11, 3, 25, 100, 7]
listA input = [a|a <-input,a `elem` [1..7]]

listB  = [a|a <-[1..100],a `mod` 6 == 0 && (a-2) `mod` 4 == 0 ]

listC input = [a^2|a<-input,odd $ a^2 , a^2 >= 100]

listD input = [a `elem` listA input| a<-input ]

listE = length [x | x <- listB, (x - 1) `mod` 5 == 0]



containsSet :: (Foldable t, Eq a) => t a -> [a] -> Bool
containsSet xs ys = and [ y `elem` xs|y<-ys]

-- and func wenn alle true ist liefert ture

filterDigit xs y = [x | x <- xs, elem y (show x)]

deleteVowels xs = [x | x <- xs, x `notElem` ['a', 'o', 'e', 'i', 'u', 'A', 'E', 'O', 'U', 'I']]

countElems xs ys = length [x | x <- xs, x `elem` ys]