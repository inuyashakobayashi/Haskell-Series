module Serie2 where

{-
(\n -> n > 0, True)

Typ: (Num a => a -> Bool, Bool)
Dies ist ein Tupel mit zwei Elementen:

Erstes Element ist eine anonyme Funktion (Lambda), die prüft ob eine Zahl größer als 0 ist
Zweites Element ist der Boolean-Wert True

f = x - 1 where x = 2

Typ: Num a => a
Eine Funktion f, die durch eine where-Klausel x mit 2 bindet
Evaluiert zu 1 (2 - 1)
Dies ist eigentlich ein Wert, keine Funktion, da x bereits gebunden ist

f2 y = x - y where x = 2

Typ: Num a => a -> a
Eine Funktion mit einem Parameter y
x ist durch where-Klausel auf 2 festgelegt
Subtrahiert y von 2

fun ls = head ls : tail ls

Typ: [a] -> [a]
Eine Funktion, die eine Liste als Parameter nimmt
Kombiniert das erste Element (head) mit der Restliste (tail)
Dies ist äquivalent zur Eingabeliste, da head:tail die ursprüngliche Liste rekonstruiert

snd (\a b -> a + b, (+))

Typ: Num a => a -> a -> a
snd extrahiert das zweite Element eines Tupels
Das Tupel enthält:

Eine Lambda-Funktion die zwei Zahlen addiert
Den (+) Operator

Evaluiert zum (+) Operator

[x ^ 2 | x <- reverse [1..10]]

Typ: Num a => [a]
Eine List Comprehension die:

Die Liste [1..10] umkehrt zu [10,9..1]
Für jedes Element x dessen Quadrat berechnet

Erzeugt die Liste [100,81,64,49,36,25,16,9,4,1]
-}

str = ['a']

fun0 p = p == p

logic a b = a && b

fun1 a b = a + b

fun2 la lb = (head la == head lb) : fun2 la lb

doubleSmallNumber :: (Ord a, Num a) => a -> a
doubleSmallNumber x =
  if x > 100
    then x
    else x * 2