# IntroHaskell

This is a repository containing function definitions and example functions for Haskell. 

The files are meant to be read in order (even it proboably won't make much sense anyways):

    1. README
    2. Intro
        2.1 HowToUseGHCi
        2.2 LearningWithGHCi
        2.3 Lists
        2.4 Recursion
        2.5 TypeSignatures
        2.6 TypeClassese
    3. Syntax
        3.1 PatternMatch
        3.2 Guards
        3.3 Where
        3.4 Lambda
        3.5 Case
    4. HigherOrderFunctions
        4.1 Curry
        4.2 HigherOrden
        4.3 Folds
        4.4 Composition
    5. Types
        5.1 Construction
        5.2 RecordSyntax
        5.3 TypeVar
        5.4 TypeSynonyms
        5.5 Typeclasses
        5.6 NewType

## "Can we escape the Von Neumann style?"

Haskell is a statical typed *lazily* evalueted __purely__ *functional* declarative programming language aiming to reduce the amount of *side-effects* in our programs. Now what does all of these words mean?

##### The Functional paradigm

Functional programming is a  paradigm where computations are treated as evaluation of mathematical functions and avoiding using states and mutable data. *Lambda calculus*, which is a mathematical formalisation of functions, serves as a point of inspiration for these languages. We mostly see that the programs seems to behave much more accordingly to the rules of mathematics, and in some languages we require that they behave exactly like mathematics. In other programming paradigms we quickly learn that a program does not behave by the rules of mathematics and we must adapt our process of thought. Now in functional we have to readapt to understand the syntax and semantics of the language. We will see that variables, loops, states and mutability are mostly not included in these languages, due to these changes.

##### Pure Functions

A pure function will always return the same output given the same input, so if you try to get input from a terminal, you cannot know what the input is. Then that is an impure function. Pure functions also need to have no __SIDE-EFFECTS__. Side-effects are effects when a computation mutes a state, i.e. Side-effects can be seen as additional computations\evaluations done by a function.

##### Lazy evaluation

Lazy evaluation is a way of doing computations. Rather than to evaluate every computations when they arise in the program, we only evaluate computations when they are needed.

##### Staticly typed

Static typing means that all the types have to be correct at compile time. This can either be done by the programmer stating the types of every function, and then the compiler does type-checking to check if everything is correct. The other option is that the compiler can infer the type of every function and make it match with the program.

##### Declarative

In imperative languages you tell the program what to do, but in declarative languages you tell the program what it is? 

## The Haskell Language

Haskell is all of the above. This means that there exist no variables, no loops, no states, no non-determinism or no way of logging in Haskell. Every function is pure, which means that the output is determined only by it's input values.
Haskell is lazy, so nothing gets evaluated before it's needed. This makes that cases appear where the program should crash, but it hasn't detected the crash yet, and carries on with its computations.
Haskell is staticly typed, so every type after every computation has already been decided.
Since Haskell is strongly typed and pure, we can mathematically prove that most of our programs will work with the structure provided by lambda calculus.

Why did I call this section "Can we escape the Von-Neumann style?"? After someone was inspired to base programming after lambda calculus, many new functional programming languages which escaped the "Von-Neumann style" arose. Haskell is a language which tries to standardise this "new" way of programming.