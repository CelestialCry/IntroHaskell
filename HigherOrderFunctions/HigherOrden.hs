module HigherOrden where

import Prelude hiding (zipWith, map, filter)

-- As we have seen earlier, Haskell allows us to let functions be inputs in other functions

flip :: (a -> b -> c) -> (b -> a -> c)
flip f = g
    where g a b = f b a
-- Take a function and flip it's argument around

zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith _ [] _ = []
zipWith _ _ [] = []
zipWith f (l:ls) (k:ks) = f l k : zipWith f ls ks
-- takes a function, two lists and returns a new list like zip, but with the function used on the elements

map :: (a -> b) -> [a] -> [b]
map _ [] = []
map f (l:ls) = f l : map f ls
-- takes a funtion and a list, then applies the function to the every element of the list

filter :: (a -> Bool) -> [a] -> [a]
filter _ [] = []
filter p (l:ls)
    | p l = l : filter p ls
    | otherwise = filter p ls
-- takes a function and a list, then checks if given element should be kept in list

fibs :: [Integer]
fibs = 0:1:zipWith (+) fibs fibo
    where fibo = drop 1 fibs
-- Here it is important to use Integer, as Int is very small and fibs grow very fast