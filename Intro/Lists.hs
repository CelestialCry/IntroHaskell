module Lists where

-- We can generate a list containing every element from 1 to 100 with
listOneToHundred :: [Int]
listOneToHundred = [1..100]

-- We can also create infinite lists with lazy evaluation with
infiniteList :: [Int]
infiniteList = [1..]

-- To prepend element in front of list we do
prepend :: a -> [a] -> [a]
prepend el ls = el:ls

-- To concatinate to lists we do
concatinate :: [a] -> [a] -> [a]
concatinate as bs = as <> bs        -- This function is a part of "new-style" Haskell, by considering lists as monoids

-- or alternatively
concatinate' :: [a] -> [a] -> [a]
concatinate' as bs = as ++ bs

-- We can use list-comprehension (also known as monad comprehension)
onlySquares :: [Int]
onlySquares = [x*x | x <- [1..]]

-- We can add predicates to the list comprehension (monad comprehension)
mystList :: Int -> Int -> [Int]
mystList a b = [x | x <- [1..], mod x a == 0, mod x b == 0]

-- We can input our own lists into the comprehension
cartProd :: [a] -> [b] -> [(a,b)]
cartProd as bs = [(a,b) | a <- as, b <- bs]

