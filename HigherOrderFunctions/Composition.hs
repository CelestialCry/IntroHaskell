module Composition where

import Prelude hiding ((.), ($))

-- Real . programming $ languages <$> have *> strangly <*> named functions >> instead >>= of braces

infixr 0 $
($) :: (a -> b) -> a -> b
f $ b = f b
-- Why does this useless function exists???

infixl 9 . -- This value is actually set to 10, but 10 is reserved for (.), so we cannot set it explicitly
(.) :: (b -> c) -> (a -> b) -> (a -> c)
f . g = \x -> f (g x)
-- This function allows us to neatly compose functions together without useing parentheses

add2 :: Int -> Int
add2 = (+2)

add13 :: Int -> Int
add13 x = add2 . add2 . add2 . add2 . add2 $ x + 3
-- Strange example, but it was the best thing I could think up