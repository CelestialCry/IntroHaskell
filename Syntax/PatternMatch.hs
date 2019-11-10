module PatternMatch where

import Prelude hiding (head, tail, init, last, null)

-- I have already used pattern matching alot in previous code, as it is so integral to making Haskell code

-- Here we specify an argument and what that argument should return
heroToZero :: Char -> Int
heroToZero 'h' = 0
heroToZero 'e' = 0
heroToZero 'r' = 0
heroToZero 'o' = 0
heroToZero _ = 1

-- We can use pattern matching to define the head, tail, last and init function
head :: [a] -> a
head [] = error "empty list"
head (l:_) = l

tail :: [a] -> [a]
tail [] = error "empty list"
tail (_:ls) = ls

init :: [a] -> [a]
init [] = error "empty list"
init (_:ls) = ls

last :: [a] -> a
last [] = error "empty list"
last [l] = l
last ls = last . init $ ls

-- these functions will crash if we give an empty list, so we will patternmatch a way to escape error
safeHead :: [a] -> Maybe a
safeHead [] = Nothing 
safeHead (l:_) = Just l

safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing 
safeTail (_:ls)  = Just ls

safeInit :: [a] -> Maybe [a]
safeInit [] = Nothing
safeInit (_:ls) = Just ls

safeLast :: [a] -> Maybe a
safeLast [] = Nothing
safeLast [l] = Just l
safeLast ls = safeLast . init $ ls

-- We can also use pattern matching to check if a list is empty
null :: [a] -> Bool
null [] = True 
null _ = False

-- Pattern matching works on everything (more on this later)
didFail :: Maybe a -> Bool
didFail (Just _) = True
didFail _ = False

extractMaybe :: Maybe Int -> Int
extractMaybe Nothing = 0
extractMaybe (Just a) = a