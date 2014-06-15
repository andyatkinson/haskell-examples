doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100
                      then x
                      else x * 2
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1
conanO'Brien = "It's a me, Conan O'Brien!"
christmasTime = take 8 (cycle "HO ")
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
length' xs = sum [1 | _ <- xs]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
rightTrinagles' = [ (a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2, a+b+c == 24]

-- chapter 2
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi  * r

-- Double is a floating point with double the precision
circumference' :: Double -> Double
circumference' r = 2 * pi * r

-- type variable
-- "class constraint" the "=>" symbol
-- "Ord" is for types that have an ordering
-- 'compare' function returns LT, GT, or EQ
-- show 3 returns a string "3"
-- read "3" - 1 returns a Int 2 because it can infer the type
-- can use "type annotations" to be explicit about type, e.g. read "5" :: Int
-- Enum, succ and pred functions
-- Bounded members have an upper and lower bound
-- Num includes all numbers, including real and integral numbers
