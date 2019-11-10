GHCi is Glasgows Haskell compilers interactive environment. It allows you to test your code on the go in an interpreted environment. To access GHCi you need GHC installed on your computer. It can be downloaded from you package manager or from the internet. Once  GHC is installed you only need to type ghci in a terminal to get into ghci.

Once you're inside there are some commands you should know. To start a command you use ":" followed by some characters:
    :h <- displays all commands
    :q <- quits ghci
    :l <- loads in modules
    :r <- reloads modules
    :m <- unloads modules
    :t "followed by a function or an expression" <- displays the type of that function
    :i "followed by a function or a type or an expression" <- displays information about the given function or type
*The most important thing is to not be afraid of trying different things*

:q, :l, :r, :m, :t are the most important commands inside ghci for loading and reloading modules, then to check if your types are correct and so on...

Once ghci has started you will be prompted with "prelude>". If you write a Haskell expression behind that prompt, ghci will do it's best to parse what you have written.

Example:

by doing ->       Prelude> 2+3
then we get ->    5

If we want to write multiline functions inside ghci we can use :{ to start multiline and :} to end multiline

Example:

by doing ->     Prelude> :{
                Prelude| min :: Ord a => a -> a -> a
                Prelude| min a b
                Prelude|    | a < b = a
                Prelude|    | otherwise =  b
                Prelude| :}

this will make the min function such that we can run it like

by doing ->     Prelude> min 2 3
then we get ->  2