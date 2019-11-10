module Lambda where
    
-- Lambdas are the same as anonymous functions

id :: x -> x
id = \x -> x
-- This is the same function, but id is set equal to the function \x -> x

-- Lambdas are very useful for when you want a function, but you only want to use in part of the program.

-- remember zeroEval?
zeroEval :: (Int -> Int) -> Int
zeroEval function = function 0 

-- we can execute zeroEval by using a lambda.
evalLambda :: Int
evalLambda = zeroEval (\x -> x + 2)

-- There are in situations like that lambdas will become very usefull