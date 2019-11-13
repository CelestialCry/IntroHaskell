module TypeSynonyms where

import Prelude hiding (String)

-- type => create a synonym for an algebraic datatype

type String = [Char]
type Name = String
-- Name is a String which we can use instead of String
-- Every time we write Name, the compiler will know that we wrote String

isMember :: Name -> [Name] -> Bool
isMember = elem 
