module Typeclasses where

infixr 2 :?
data Cond a b = a :? b
-- Basicly a pair of two things, but with pretty syntax

class JSNess a where
    toBool :: a -> Bool
    infixr 1 ?
    (?) :: a -> Cond b b -> b
    a ? fs :? sn
        | toBool a = fs
        | otherwise = sn
-- Defining a class with a method to turn some thing into a bool in an if
-- like in JS you can do if ("") and it evaluates

instance JSNess Bool where
    toBool False = False
    toBool True = True

instance JSNess [a] where
    toBool [] = False 
    toBool _ = True

instance JSNess Int where
    toBool 0 = False 
    toBool _ = True 
    0 ? _ :? e = e
    _ ? i :? _ = i
-- Can overload functions if needed