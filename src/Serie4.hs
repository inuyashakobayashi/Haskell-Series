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