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
