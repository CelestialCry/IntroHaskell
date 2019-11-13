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

-- Use hoogle to look up more typeclasses

-- We can define instances of typeclasses, but more on how to do that later