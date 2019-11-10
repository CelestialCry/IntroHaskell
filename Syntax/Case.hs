{-#LANGUAGE LambdaCase#-}
module Case where

import Prelude hiding (null)

-- cases is a way to go from evaluation back into pattern matching
-- We will define null, but with the new case syntax
null :: [a] -> Bool
null ls = case ls of
        [] -> True
        _ -> False

lessThanZero :: [Int] -> [Int]
lessThanZero [] = []
lessThanZero (l:ls) = case compare l 0 of
    LT -> l:lessThanZero ls
    _ -> lessThanZero ls

-- We can also define cases as pure functions with lambda case (defined on start)
lessThanZero' :: [Int] -> [Int]
lessThanZero' [] = []
lessThanZero' (l:ls) = \case
    LT -> l:lessThanZero' ls
    _ -> lessThanZero ls
    $ compare l 0
-- This gives the case a special property that it acts just as a function