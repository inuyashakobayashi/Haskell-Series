module Serie4 where

-- Aufgabe2
-- b String
-- c func3:: [a]-> a
-- d func4::(Num a)=>[a] -> a
-- e func5 :: (Num a) => [a] ->(a->a)
--

myTake :: (Ord t, Num t) => t -> [a] -> [a]
myTake _ [] = []
myTake n (x : xs)
  | n <= 0 = []
  | otherwise = x : myTake (n - 1) xs

-- Entfernt die ersten n Elemente einer Liste
myDrop :: Integer -> [a] -> [a]
myDrop _ [] = [] -- Case 1: empty list
myDrop n (x : xs) -- Case 2 & 3: non-empty list
  | n <= 0 = (x : xs) -- If n ≤ 0, return whole list
  | otherwise = myDrop (n - 1) xs -- Drop one element and recurse with n-1

merge :: (Ord a) => [a] -> [a] -> [a]
merge [] ys = ys -- if first list is empty, return second list
merge xs [] = xs -- if second list is empty, return first list
merge (x : xs) (y : ys) -- if both lists have elements
  | x <= y = x : merge xs (y : ys) -- if x is smaller, take x and recurse
  | otherwise = y : merge (x : xs) ys -- if y is smaller, take y and recurse

half :: [a] -> ([a], [a])
half xs = splitAt n xs
  where
    n = length xs `div` 2

msort :: (Ord a) => [a] -> [a]
msort [] = []
msort [x] = [x] -- Einelementige Liste ist bereits sortiert
msort xs = merge (msort ys) (msort zs) -- Rekursiver Aufruf auf beiden Hälften
  where
    (ys, zs) = half xs

moreOften :: (Eq a) => a -> a -> [a] -> Bool
moreOften x y xs = count x xs > count y xs
  where
    count n = length . filter (== n)

isPrime :: Integer -> Bool
isPrime n
  | n < 2 = False
  | otherwise = n `elem` takeWhile (<= n) primes
  where
    primes = sieve [2 ..]
    sieve (p : xs) = p : sieve [x | x <- xs, x `mod` p /= 0]