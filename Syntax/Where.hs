module Where where

-- We can make abstractions with where, let, in

quickSort :: Ord a => [a] -> [a]
quickSort [] = []
quickSort (l:ls) = quickSort smallerOrEqual <> [l] <> quickSort bigger
    where smallerOrEqual = [s | s <- ls, s <= l]
          bigger = [b | b <- ls, b > l]
-- See that where says what smallerOrEqual and bigger is after the function

quickSort' :: Ord a => [a] -> [a]
quickSort' [] = []
quickSort' (l:ls) = let smallerOrEqual = [s | s <- ls, s <= l]
                        bigger = [b | b <- ls, b > l]
                    in quickSort' smallerOrEqual <> [l] <> quickSort' bigger
-- And in let we define smallerOrEqual and bigger before the function