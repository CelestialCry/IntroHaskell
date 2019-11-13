module Newtype where

import Typeclasses

-- A way to "wrap" our algebraic data types (create new types)
-- These are very restricted, but fats
-- There are a lot of use cases for newtypes, but that is a story of it's own


newtype Mult = Mult {unMult :: Int}
-- This allows us to redefine our typeclasses for the Int type

instance Semigroup Mult where
    a <> b = Mult $ unMult a * unMult b



newtype Numeral = Numeral {getInt :: Int}

instance JSNess Numeral where
    toBool Numeral {getInt = 1} = True 
    toBool _ = False



newtype State s a = State {getState :: s -> (a,s)}
-- We use newtypes to define states in Haskell, like this
-- But we have to add a bit more structure so that it
-- actually works