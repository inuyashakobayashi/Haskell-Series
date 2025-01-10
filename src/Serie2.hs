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

fun0 p = if p /= p then p else p

logic a b = a && b

fun1 a b = a + b

fun2 la lb = (head la == head lb) : fun2 la lb

doubleSmallNumber :: (Ord a, Num a) => a -> a
doubleSmallNumber x =
  if x > 100
    then x
    else x * 2

-- Aufgabe 2-4
planet :: Double -> Double -> (Double, Double)
planet r d = (r, d)

uranus :: (Double, Double)
uranus = planet 25362000 1270

volume :: (Double, Double) -> Double
volume (r, d) = 4 / 3 * pi * r ^ 3

mass :: (Double, Double) -> Double
mass (r, d) = volume (r, d) * d

surfaceArea :: (Double, Double) -> Double
surfaceArea (r, d) = 4 * pi * r ^ 2

circleArea :: (Double, Double) -> Double
circleArea (r, d) = pi * r ^ 2

isBigger :: (Double, Double) -> (Double, Double) -> Bool
isBigger (r1, d1) (r2, d2) = volume (r1, r2) > volume (r2, d2)

isHeavier :: (Double, Double) -> (Double, Double) -> Bool
isHeavier (r1, d1) (r2, d2) = mass (r1, d1) > mass (r2, d2)

relativeSize :: (Double, Double) -> (Double, Double) -> Double
relativeSize (r1, d1) (r2, d2) = volume (r1, d1) / volume (r2, d2)

-- es fehlt noch 2-3
