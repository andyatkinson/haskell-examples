-- pattern matching
lucky :: (Integral a) => a -> String
lucky 7 = "Lucky Number Seven!"
lucky x = "Sorry you're out of luck"

-- define a function recursively
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- pattern matching simple example
charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"
charName x = "Sorry"

-- call it like: addVectors (1,2) (3,4)
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- make functions like fst and snd on pairs, but for triples
first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

-- pattern match in list comprehension
-- let xs = [(1,3),(4,3),(2,4),(5,3),(5,6),(3,1)]
-- [a+b | (a,b) <- xs]
-- syntax: take xs, for pairs, add the pair

-- x:xs is a pattern used with lists
-- binds x to the first element, and xs to the rest of the element
-- if the list has only one element, xs is an empty list
--
-- x:y:z:zs will match lists with size of 3 or more, binding first three variables and the rest of the list to zs

head' :: [a] -> a
head' [] = error "Can't call head on an empty list"
head' (x:_) = x
-- syntax: match x to first element, _ is rest of elements, return x
-- "_" is used because we don't care about the values

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two element: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "The list is long. The first two elements are: " ++ show x ++ " and " ++ show y

-- length function using pattern matching and recursion
length' :: (Num b) => [a] -> b
length' [] = 0 -- "edge condition"
length' (_:xs) = 1 + length' xs

-- sum with pattern matching and recursion
sum' :: (Num a) => [a] -> a
sum' [] = 0 -- edge condition
sum' (x:xs) = x + sum' xs

-- xs@(x:y:ys) a way to refer to the match of x:y:ys and get the value

capital :: String -> String
capital "" = "Empty"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | bmi <= skinny = "You're underweight"
    | bmi <= normal = "You're supposedly normal."
    | bmi <= fat = "You're fat."
    | otherwise = "Way overweight."
    where bmi = weight / height ^ 2
          (skinny, normal, fat) = (18.5, 25.0, 30.0)

-- called like: max' 1 5
max' :: (Ord a) => a -> a -> a
max' a b
    | a > b = a
    | otherwise = b

-- compare function using guards
myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
    | a > b = GT
    | a == b = EQ
    | a < b = LT

-- syntax signature: take in two strings, return a string
-- take first char of each string, print new string
initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstname
          (l:_) = lastname

-- take list of pairs, calculate bmi for pair, return list of floats
calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w,h) <- xs]
    where bmi weight height = weight / weight ^ 2


-- case expressions
describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of [] -> "empty"
                                               [x] -> "a singleton list."
                                               xs -> "a longer list."

describeList' :: [a] -> String
describeList' xs = "The list is " ++ what xs
    where what [] = "empty."
          what [x] = "a singleton list."
          what xs = "a longer list."
