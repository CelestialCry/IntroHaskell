module RecordSyntax where

type Person = String
type Address = String
type Email = String

data Book = Item Person Address Email
-- Let's say you want to store stuff like this

getAddress :: Book -> Address
getAddress (Item _ add _) = add
getPerson :: Book -> Person
getPerson (Item per _ _) = per
getMail :: Book -> Email
getMail (Item _ _ em) = em
-- Then you want functions to extract one piece of the information

-- We can instead write
data AddressBook = Entry {person :: Person, 
                          address :: Address, 
                          email :: Email}

getEmail :: AddressBook -> Email
getEmail = email
-- We automaticly gets functions which extracts from the list

getAddressTo :: Person -> [AddressBook] -> [Address]
getAddressTo per = (map address) . filter (\x -> per == person x)