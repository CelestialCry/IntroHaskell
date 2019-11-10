{-#LANGUAGE ExplicitForAll#-}
module TypeSignature where

import Prelude hiding (fst)

-- There are some rules when it comes to types.
-- Every types start with a  capital letter, while every function and variable starts with a lowercase letter.

--Example
keepOdd :: [Int] -> [Int]
keepOdd ls = [x | x <- ls, mod x 2 == 1]
-- Here we can see that the *type* Int has a  capital letter while the *function* keepOdd and *variable* ls starts with lowercases



-- Type variables is a way to abstract a concrete type into any type.
-- As we have seen with the function
id :: forall a. a -> a      -- I have set the forall a flag explicit, but it is inferred by the compiler if not set (<=> it is redundant)
id x = x
-- This function can use any type as the argument and return something of the same type.
-- So a represent any type

fst :: forall a b. (a,b) -> a
fst (a,_) = a
-- This is the definition of the fst function
-- here we can see in the type signature that it takes a tuple as an input and returns some value of type a.
-- The tuple contains to different types, a and b. These types may not be different, as the forall a b implies that a = b at some point.


-- Functions can be a part of a type signature. We have seen that Int is an integer variable, and (Int -> Int) is an integer function type.
-- We can have
zeroEval :: (Int -> Int) -> Int
zeroEval function = function 0
-- The type signature has a function as the input, then it returns an integer as the output. (More on this later)
-- We can use the type signature to specify how our function behaves