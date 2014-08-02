## Haskell examples

  * Code samples from [Learn You A Haskell for Great Good](http://learnyouahaskell.com/)

### ghci

    $ ghci
    :quit
    :l filename

### Syntax

String concatenation uses "++". Comments are started with "--". `xs@(x:y:ys)` is a way with `xs` to refer to the value of the pattern match `x:y:ys`.

Guards are like if statements. Guards are usually lined up. They can be written inline but it is difficult to read.

Call call functions as infix with backticks. Can define functions with backticks.

let <bindings> in <expression>

### Tuples

Like lists, story several values into a single value. Tuples are used when the exact number of values to combine is known and its type depends on how many components it has and the types of the components.

Unlike a list, tuples do not have to be homogenous.

Tuple of size 2 is called a pair. When a list of pairs is desired, use a Tuple and not a list of lists.

List is like `[[1,2],[3,4]]`.

Tuple is: `[(1,2),(3,4)]`. `fst` and `snd` are defined for pairs but not for triples.

    ghci> fst (8,11)
    8

    ghci> snd (8,11)
    11

### guards

  where, let

### case expressions

    case expression of pattern -> result  
                       pattern -> result  
                       pattern -> result  
                       ...  
