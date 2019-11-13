module TypeVar where

-- Abstracting our types

data Maybe a = Nothing | Just a deriving(Show, Read)
-- This is the common Maybe a type we have used before

data Either a b = Left a | Right b
-- This is another way of doing maybe, allows more error  handling

data List a = Ø | a :- List a
-- This is a linked list

data Tree a = Branch a (Tree a) (Tree a) | Leaf a
-- This is a linked tree

