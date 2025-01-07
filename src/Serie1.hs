module Serie1 where

-- Aufgabe 1-2
{-
ghci> :4 +- 2
unknown command ':4'
use :? for help.
ghci> 4 --2
4
ghci> 4.0 ^^2.0

<interactive>:4:5: error:
    • Could not deduce (Integral b0) arising from a use of ‘^^’
      from the context: Fractional a
        bound by the inferred type of it :: Fractional a => a
        at <interactive>:4:1-9
      The type variable ‘b0’ is ambiguous
      These potential instances exist:
        instance Integral Integer -- Defined in ‘GHC.Real’
        instance Integral Int -- Defined in ‘GHC.Real’
        instance Integral Word -- Defined in ‘GHC.Real’
        ...plus one instance involving out-of-scope types
        (use -fprint-potential-instances to see them all)
    • In the expression: 4.0 ^^ 2.0
      In an equation for ‘it’: it = 4.0 ^^ 2.0

<interactive>:4:7: error:
    • Could not deduce (Fractional b0) arising from the literal ‘2.0’
      from the context: Fractional a
        bound by the inferred type of it :: Fractional a => a
        at <interactive>:4:1-9
      The type variable ‘b0’ is ambiguous
      These potential instances exist:
        instance Fractional Double -- Defined in ‘GHC.Float’
        instance Fractional Float -- Defined in ‘GHC.Float’
        ...plus one instance involving out-of-scope types
        (use -fprint-potential-instances to see them all)
    • In the second argument of ‘(^^)’, namely ‘2.0’
      In the expression: 4.0 ^^ 2.0
      In an equation for ‘it’: it = 4.0 ^^ 2.0
ghci> 4 mod 2

<interactive>:5:1: error:
    • Could not deduce (Integral a0)
        arising from a type ambiguity check for
        the inferred type for ‘it’
      from the context: (Integral a, Num t,
                         Num ((a -> a -> a) -> t -> t1))
        bound by the inferred type for ‘it’:
                   forall {a} {t} {t1}.
                   (Integral a, Num t, Num ((a -> a -> a) -> t -> t1)) =>
                   t1
        at <interactive>:5:1-7
      The type variable ‘a0’ is ambiguous
      These potential instances exist:
        instance Integral Integer -- Defined in ‘GHC.Real’
        instance Integral Int -- Defined in ‘GHC.Real’
        instance Integral Word -- Defined in ‘GHC.Real’
        ...plus one instance involving out-of-scope types
        (use -fprint-potential-instances to see them all)
    • In the ambiguity check for the inferred type for ‘it’
      To defer the ambiguity check to use sites, enable AllowAmbiguousTypes
      When checking the inferred type
        it :: forall {a} {t1} {t2}.
              (Integral a, Num t1, Num ((a -> a -> a) -> t1 -> t2)) =>
              t2
ghci> 9 * 'c'

<interactive>:6:3: error:
    • No instance for (Num Char) arising from a use of ‘*’
    • In the expression: 9 * 'c'
      In an equation for ‘it’: it = 9 * 'c'
ghci> [9,'c']

<interactive>:7:2: error:
    • No instance for (Num Char) arising from the literal ‘9’
    • In the expression: 9
      In the expression: [9, 'c']
      In an equation for ‘it’: it = [9, 'c']
ghci> 4 ^sqrt(- 0.25)

<interactive>:8:3: error:
    • Could not deduce (Integral b0) arising from a use of ‘^’
      from the context: Num a
        bound by the inferred type of it :: Num a => a
        at <interactive>:8:1-15
      The type variable ‘b0’ is ambiguous
      These potential instances exist:
        instance Integral Integer -- Defined in ‘GHC.Real’
        instance Integral Int -- Defined in ‘GHC.Real’
        instance Integral Word -- Defined in ‘GHC.Real’
        ...plus one instance involving out-of-scope types
        (use -fprint-potential-instances to see them all)
    • In the expression: 4 ^ sqrt (- 0.25)
      In an equation for ‘it’: it = 4 ^ sqrt (- 0.25)

<interactive>:8:4: error:
    • Could not deduce (Floating b0) arising from a use of ‘sqrt’
      from the context: Num a
        bound by the inferred type of it :: Num a => a
        at <interactive>:8:1-15
      The type variable ‘b0’ is ambiguous
      These potential instances exist:
        instance Floating Double -- Defined in ‘GHC.Float’
        instance Floating Float -- Defined in ‘GHC.Float’
    • In the second argument of ‘(^)’, namely ‘sqrt (- 0.25)’
      In the expression: 4 ^ sqrt (- 0.25)
      In an equation for ‘it’: it = 4 ^ sqrt (- 0.25)

<interactive>:8:9: error:
    • Could not deduce (Num b0)
        arising from a use of syntactic negation
      from the context: Num a
        bound by the inferred type of it :: Num a => a
        at <interactive>:8:1-15
      The type variable ‘b0’ is ambiguous
      These potential instances exist:
        instance Num Integer -- Defined in ‘GHC.Num’
        instance Num Double -- Defined in ‘GHC.Float’
        instance Num Float -- Defined in ‘GHC.Float’
        ...plus two others
        ...plus two instances involving out-of-scope types
        (use -fprint-potential-instances to see them all)
    • In the first argument of ‘sqrt’, namely ‘(- 0.25)’
      In the second argument of ‘(^)’, namely ‘sqrt (- 0.25)’
      In the expression: 4 ^ sqrt (- 0.25)

<interactive>:8:11: error:
    • Could not deduce (Fractional b0) arising from the literal ‘0.25’
      from the context: Num a
        bound by the inferred type of it :: Num a => a
        at <interactive>:8:1-15
      The type variable ‘b0’ is ambiguous
      These potential instances exist:
        instance Fractional Double -- Defined in ‘GHC.Float’
        instance Fractional Float -- Defined in ‘GHC.Float’
        ...plus one instance involving out-of-scope types
        (use -fprint-potential-instances to see them all)
    • In the expression: 0.25
      In the first argument of ‘sqrt’, namely ‘(- 0.25)’
      In the second argument of ‘(^)’, namely ‘sqrt (- 0.25)’
ghci> mod pi 8

<interactive>:9:1: error:
    • Ambiguous type variable ‘a0’ arising from a use of ‘print’
      prevents the constraint ‘(Show a0)’ from being solved.
      Probable fix: use a type annotation to specify what ‘a0’ should be.
      These potential instances exist:
        instance Show Ordering -- Defined in ‘GHC.Show’
        instance Show a => Show (Maybe a) -- Defined in ‘GHC.Show’
        instance Show Integer -- Defined in ‘GHC.Show’
        ...plus 23 others
        ...plus 15 instances involving out-of-scope types
        (use -fprint-potential-instances to see them all)
    • In a stmt of an interactive GHCi command: print it
ghci>
-}

{-
ghci > 3 * 2
6
ghci > 10 / 4
2.5
ghci > 2 ^ 5
32
ghci > (100 + 40) * 3
420

-}

{-

ghci> (*)3 2
6
ghci> (/) 10 4
2.5

ghci> (^) 2 5
32
ghci> (*)((+) 100 40)  3
420

-}

-- hacken `...` mache den prefix operation ins infix operation
-- z.b  mod 10 3 -> 10   `mod `3
-- () macht andersrum 10 + 3 -> (+) 10 3

-- aufgabe 1-5
add1 :: (Num a) => a -> a -> a
add1 a b = a + b

add2 :: (Num a) => (a, a) -> a
add2 (a, b) = a + b

add3 :: Integer -> Integer -> Integer
add3 = \x y -> x + y

successor :: (Num a) => a -> a
successor a = a + 1

demorgen a b = not (a && b) == not a || not b