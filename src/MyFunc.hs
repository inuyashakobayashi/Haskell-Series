import Distribution.Simple.Utils (xargs)
import GHC.Exts.Heap (TsoFlags (TsoFlagsUnknownValue))

myHead [] = error "error ,empty list kann nicht head machen"
myHead (x : _) = x

myLength [] = "das ist eine Empty List"
myLength (x : []) = "das ist eine Elemente List" ++ show x
myLength (x : y : []) = "das ist zwei Elemente List" ++ show x ++ show y
myLength (x : y : _) = "das ist lange List mit fst und snd elmente " ++ show x ++ show y

myLength' [] = 0
myLength' (_ : xs) = 1 + myLength' xs

mySum [] = 0
mySum (x : xs) = x + mySum xs

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
  | bmi <= skinny = "You're underweight, you emo, you!"
  | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"
  | bmi <= fat = "You're fat! Lose some weight, fatty!"
  | otherwise = "You're a whale, congratulations!"
  where
    bmi = weight / height ^ 2
    skinny = 18.5
    normal = 25.0
    fat = 30.0

myMaximum :: (Ord a) => [a] -> a
myMaximum [] = error "es ist empty List"
myMaximum [x] = x
myMaximum (x : xs)
  | x > maxtail = x
  | x < maxtail = maxtail
  where
    maxtail = myMaximum xs

myReplicate :: (Ord t1, Num t1) => t1 -> t2 -> [t2]
myReplicate n x
  | n <= 0 = []
  | otherwise = x : myReplicate (n - 1) x

myTake :: (Ord t, Num t) => t -> [a] -> [a]
myTake _ [] = []
myTake n (x : xs)
  | n <= 0 = []
  | otherwise = x : myTake (n - 1) xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse [x] = [x]
myReverse (x : xs) = myReverse xs ++ [x]

myRepeat :: [a] -> [a]
myRepeat (x : xs) = x : myRepeat xs

myZip :: [a] -> [b] -> [(a, b)]
myZip _ [] = []
myZip [] _ = []
myZip (x : xs) (y : ys) = (x, y) : myZip xs ys

myElem _ [] = False
myElem x (y : ys)
  | x /= y = myElem x ys
  | otherwise = True

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x : xs) =
  let smallerSorted = quicksort [a | a <- xs, a <= x]
      biggerSorted = quicksort [a | a <- xs, a > x]
   in smallerSorted ++ [x] ++ biggerSorted

myQckS :: (Ord a) => [a] -> [a]
myQckS [] = []
myQckS (x : xs) = myQckS (smaller x xs) ++ [x] ++ myQckS (bigger x xs)
  where
    smaller pivot [] = []
    smaller pivot xs = [y | y <- xs, y <= pivot]
    bigger pivot [] = []
    bigger pivot xs = [y | y <- xs, y > pivot]

myZipWith _ [] _ = []
myZipWith _ _ [] = []
myZipWith f (x : xs) (y : ys) = f x y : myZipWith f xs ys

myFlip :: (t1 -> t2 -> t3) -> t2 -> t1 -> t3
myFlip f = g
  where
    g x y = f y x

myMap :: (t -> a) -> [t] -> [a]
myMap _ [] = []
myMap f (x : xs) = f x : myMap f xs

myFilter _ [] = []
myFilter f (x : xs)
  | f x = x : myFilter f xs
  | otherwise = myFilter f xs

myChain 1 = [1]
myChain x
  | odd x = x : myChain (x * 3 + 1)
  | even x = x : myChain (x / 2)

mySumFlodl :: (Foldable t, Num b) => t b -> b
mySumFlodl xs = foldl (\acc x -> acc + x) 0 xs

myElemFoldl :: (Eq a) => a -> [a] -> Bool
myElemFoldl _ [] = False
myElemFoldl y ys = foldl (\acc x -> if x == y then True else acc) False ys