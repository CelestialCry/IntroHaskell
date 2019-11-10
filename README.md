# IntroHaskell

This is a repository containing function definitions and example functions for Haskell. 

The files are ordered as:
    1. README
    2. Intro
    2.1 HowToUseGHCi
    2.2 LearningWithGHCi
    2.3 Functions
    2.4 Lists
    3. Syntax
    4. Recursion
    5. Types
    6. HigherOrderFunctions

## "Can we escape the Von Neumann style?"

Haskell is a statical typed *lazily* evalueted __purely__ *functional* declarative programming language aiming to reduce the amount of *side-effects* in our programs. Now what does all of these words mean?

##### The Functional paradigm

Functional programming is a programming paradigm where computations are treated as evaluation of mathematical functions and avoiding using states and mutable data. Functional programming takes alot of inspiration from the *lambda calculus*, which is a mathematical formalisation of functions. In other programming paradigms we quickly learn that a program does not behave the rules of mathematics and we therefor learn to think accordingly. In Functional languages, the programs behave much more like mathematics. Variables, loops, states and mutability are mostly not included in these languages.

##### Pure Functions

Pure functions will always return the same output given the same input. If you try to get input from a terminal, you cannot know what the input is, so that is an impure function. Pure functions also need to have no __SIDE-EFFECTS__. Side-effects are effects when a computation mutes a states. Side-effects can be seen as additional computations done by a function.

##### Lazy evaluation

Lazy evaluation is a way of doing computations. Rather than to evaluate every computations when they arise in the program, we only evaluate computations when they are needed.

##### Staticly typed

Static typing means that all the types have to be correct at compile time. This can either be done by the programmer stating the types of every function, and then the compiler does type-checking to check if everything is correct. The other option is that the compiler can infer the type of every function and make it match with the program.

##### Declarative

In imperative languages you tell the program what to do, but in declarative languages you tell the program what it is? 

## The Haskell Language

Haskell is all of the above. This means that there exist no variables, no loops, no states, no non-determinism or no way of logging in Haskell. Every function is pure, which means that the output is determined only by it's input values.
Haskell is lazy, so nothing gets evaluated before it's needed. This makes that cases appear where the program should crash,but it hasn't detected the crash yet, and carries on with its computations.
Haskell is staticly typed, so every type after every computation has already been decided.
Since Haskell is strongly typed and pure, we can mathematically prove that most of our programs will work with the lambda calculus.