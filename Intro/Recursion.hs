module Recursion where

import Prelude hiding (length, take, drop, cycle, repeat, sum, product, zip)

-- Recursion is the bread, butter, ham, cheese, jam and etc of Haskell.
-- While in imperative languages you use loops like *for* or *while* to do stuff, you use recursion in Haskell.

length :: [a] -> Int
length [] = 0
length (_:ls) = 1 + length ls
-- This function gets us the length of the list. 
-- We always take out the first element and add 1 to the counter, then run the function again.

repeat :: a -> [a]
repeat a = a:repeat a
-- We can also make an infinite list of the same thing

cycle :: [a] -> [a]
cycle ls = ls <> cycle ls
-- Takes a list and appends it to itself infinitly

take :: Int -> [a] -> [a]
take 0 _ = []
take _ [] = []
take int (l:ls) = l:take (int-1) ls
-- We can use recursion to take several things out of a list

drop :: Int -> [a] -> [a]
drop _ [] = []
drop 0 ls = ls
drop x (_:ls) = drop (x-1) ls
-- We can use recursion to drop several things out of a list

sum :: Num a => [a] -> a
sum [] = 0
sum (l:ls) = l + sum ls

product :: Num a => [a] -> a
product [] = 0
product [a] = a
product (l:ls) = l*product ls

zip :: [a] -> [b] -> [(a,b)]
zip [] _ = []
zip _ [] = []
zip (a:as) (b:bs) = (a,b) : zip as bs 