module Folds where

import Prelude hiding (foldr, foldl)

foldr :: (a -> b -> b) -> b -> [a] -> b
foldr _ acc [] = acc
foldr f acc (l:ls) = f l $ foldr f acc ls

foldl :: (b -> a-> b) -> b -> [a] -> b
foldl _ acc [] = acc
foldl f acc (l:ls) = foldl f (f acc l) ls