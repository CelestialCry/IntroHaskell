module Functions where

{- As we quickly see how we define functions in Haskell are very unlike other imperative programming languages.
Every function have two parts to it, a type signature and a declaration of what it is.
The type signature is the functions type, while the declaration is what the function is.

Here i will start with the identity function
-}

id :: a -> a
id x = x        

-- It has signature a -> a. This means that it takes something of type a as an argument and returns something of type a (More in this in another file)
-- The function part reflects this as x is an input to id and id x is x.

addOne :: Int -> Int
addOne int = int + 1

multiplyTogether :: Double -> Double -> Double
multiplyTogether x y = x*y

-- See if you understand what these functions are

infixl 4 +<+
(+<+) :: [a] -> [a] -> [a]
as +<+ bs = bs ++ as
-- Definied an infix operator as

-- Also have infixr and infix