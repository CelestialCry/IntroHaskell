module Newtype where

-- A way to "wrap" our algebraic data types (create new types)
-- These are very restricted, but fats
-- There are a lot of use cases for newtypes, but that is a story of it's own

newtype Add = Add Int
-- This allows us to redefine our typeclasses for the Int type