module TypeClasses where

import Prelude hiding (Eq(..), Enum(..))

-- Typeclasses are like predefined functions, so that we can add some structure to our types

-- We can define typeclasses with class
class Eq a where
    {-#MINIMAL (==) | (/=) #-}
    (==) :: a -> a -> Bool
    (/=) :: a -> a -> Bool
    a == b = not $ a /= b
    a /= b = not $ a == b

class Enum a where
    {-#MINIMAL toEnum, fromEnum #-}
    toEnum :: Int -> a
    fromEnum :: a -> Int
    
    succ :: a -> a
    succ a = toEnum $ 1 + fromEnum a

    pred :: a -> a
    pred a = toEnum $ (-1) + fromEnum a

    enumFrom :: a -> [a]
    enumFrom a = a:enumFrom (succ a)

    enumFromThen :: a -> a -> [a]
    enumFromThen a b = a:enumFromThen b (toEnum (2*fromEnum b - fromEnum a))

    enumFromTo :: a -> a -> [a]
    enumFromTo start end
        | fromEnum start < fromEnum end = start:enumFromTo (succ start) end
        | otherwise = []

{-
class Num a where
    #MINIMAL (+), (*), abs, signum, fromInteger, ((-) | negate)#

    (+) :: a -> a -> a
    (*) :: a -> a -> a
    abs :: a -> a
    signum :: a -> a
    fromInteger :: Integer -> a

    (-) :: a -> a -> a
    a - b = a + negate b

    negate :: a -> a
    negate a = (fromInteger 0) - a 
    
    Use hoogle to lookup more classes-}