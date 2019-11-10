module Curry where

add :: Num a => a -> a -> a
add = (+)

addWithTwo :: Num a => a -> a
addWithTwo = add 2
-- This function takes the previous function and curries/schöenfinkelize it with one argument, creating a new function

example :: (a -> b) -> [a] -> b
example fun = fun . head

head' :: [a] -> a
head' = example id
-- This is another way of currying, where we concreticize the function to just be the head function