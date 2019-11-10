We will use GHCi to play a bit with Haskells basic types and functions. The basic types in Haskell are:
    - Numbers, represented as ints or floats (1,-1,2.3,...)
    - Strings, represented as a Char or a list of Chars (Char: 'a', 'b'. Strings: "afb", "Hello World")
    - Booleans (True, False)
    - Lists, a collection of things of the same type ([1,2,3], ['a','b','c'], "abc")
    - Tuples, a "collection" of things of maybe different types ((1,'a'), (2, "Hello World"))

If you have installed GHC and/or stack, you should have access to GHCi,
either by typing ghci in a terminal.

Now you can try and test different functions in the interactive Haskell environment.

for numbers we have functions like:
    +, -, *, /, ==, /=, >, >=, <, <=, abs, sign, show, succ, min, max

for Chars we have:
    ==, /=, >, >=, <, <=, show, succ, min, max
    
for Bools we have:
    &&, ||, not, ==, /=, show, read
        
for Lists we have:
    :, ++, <> (same as ++), !!,, take, drop, head, tail, init, last, >, >=, <, <=, ==, /=, foldr, foldl, show, read, length, elem (sum, product may work)
    
for Strings we have have functions:
    :, ++, <> (same as ++), !!, take, drop, head, tail, init, last, >, >=, <, <=, ==, /=, foldr, foldl, show, read, length, elem
    
(Note how Lists and Strings have been listed as identical, that is because a String is just a list of Chars.)

for Tuples we have:
    fst, snd, >, >=, <, <=, ==, /=, <>, foldr, foldl, show


There are many more functions defined in base, but these are among the most basic ones.

It is important to note that some functions are infix while other are prefix.
If a function has special characters then it is an infix function 
=> adding 2 and 3 are done like 2 + 3, but take 2 [1,2,3,4] has the function in front and the arguments at the back.
You can take an infix function and surround it with parantheses to make it prefix => 2 + 3 = (+) 2 3
And conversely you can surround a prefix function with ` to make it infix => take 2 [1,2,3,4] = 2 `take` [1,2,3,4]

Explaining some functions:
    - (+), (-), (*), (/): arithmetic operations
    - show sends a type into a string => show 2 = "2"
    - read sends a string into a value in another type => read "2" = 2
    - (==), (/=) equality operators
    - (<), (>) ordering operators
    - succ gives the next element in order => succ 1 = 2
    - min and max is min and max => min 'a' 'b' = 'a'
    - (&&) logical AND. (||) logical OR.
    - (:) prepend element to list => [1,2,3] = 1:[2,3]
    - (++) concatinate lists => [1] ++ [2] = [1,2]
    - (!!) gets item in list => [1,2,3,4] !! 3 = 3
    - head takes first element in list => head [1,2,3,4] = 1
    - tail gets list after first element => tail [1,2,3,4] = [2,3,4]
    - last gets last element in list => last [1,2,3,4] = 4
    - init gets the first elements in the list => init [1,2,3,4] = [1,2,3]
    - (<>) an arbirtary semigroup operation
    - fst gets first component in tuple => fst (1, 'a') = 1
    - snd gets second component in tuple => snd (1, 'a') = 'a'

Examples to try in GHCi:
    - 1+2
    - True || False
    - 1:2:3:4[] == [1,2] <> [3,4]
    - last []

just see what works and what does not work. A lot of learning stems from failure.