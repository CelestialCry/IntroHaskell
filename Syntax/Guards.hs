module Guards where

import Prelude hiding (min, max)

-- Doing if-else in Haskell.
-- There is noe general consensus on how to do if else expressions in Haskell

min' :: Ord a => a -> a -> a
min' a b = if a < b then a else b
-- This is an expression with if-then-else

min :: Ord a => a -> a -> a
min a b
    | a < b = a
    | otherwise = b
-- This is a function with guards

max' :: Ord a => a -> a -> a
max' a b = if a > b then a else b

max :: Ord a => a -> a -> a
max a b
    | a > b = a
    | otherwise = b

-- Most people write Haskell using guards and not using if-then-else
-- if-then-else is restricted to that it can only have two things happening, while
-- guards can have unlimited of different predicates

fizzBuzz :: [Int] -> [String]
fizzBuzz [] = []
fizzBuzz (l:ls)
    | mod l 3 == 0 = "Fizz" : fizzBuzz ls
    | mod l 5 == 0 = "Buzz" : fizzBuzz ls
    | otherwise = show l : fizzBuzz ls