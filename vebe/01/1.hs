import Data.Char

mySum :: Num a => [a] -> a
mySum [] = 0
mySum (x:xs) = x + (mySum xs)

-- -------------------------

takeWord :: String -> String 
takeWord = takeWhile (not . isSpace) . dropWhile isSpace


-- filtriranje indeksa 
filterByIndex p lst = 
  let withIndices lst = zip [1..] lst  
      indexed = withIndices lst 
      pairped = p . fst 
  in map snd $ filter pairped indexed 

