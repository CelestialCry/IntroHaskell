module Construction where

import Prelude hiding ((+), Bool(..))

-- data => create a new algebriac data-type

data OneCat = One deriving (Show, Read)
-- The one and only One Category

data Bool = True | False deriving (Eq, Show, Read)

data TrafficLight = Red | Yellow | Green deriving(Show, Read, Eq)

drive :: TrafficLight -> Bool
drive Red = False 
drive Yellow = False
drive Green = True

switch :: TrafficLight -> TrafficLight
switch Red = Green
switch Yellow = Green
switch Green = Red
-- Defined some simple stuff with the types

data Pair = P Int String

prettyPrint :: Pair -> String
prettyPrint (P int string) = string <> ": " <> show int

data Nat = N | S Nat deriving (Show, Read)
-- Natural numbers
-- This is a recursive datatypes

(<+>) :: Nat -> Nat -> Nat
nat <+> N = S nat
N <+> nat = S nat
S nat1 <+> nat2 = nat1 <+> S nat2
-- Observe how pattern matching still works


infixr 8 :-
data ℕ = End | OneCat :- ℕ deriving (Show, Read)
-- Another way of defining natural numbers with an infix constructor

infixl 6 +
(+) :: ℕ -> ℕ -> ℕ
End + nat = One:-nat
nat + End = One:-nat
One:-nat1 + nat2 = nat1 + One:-nat2
-- Here we have to watch out for the fixity of our operators to match