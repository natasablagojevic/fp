module Lib where

-- REPNA REKURZIJA = ONA NIJE TOLIKO STRASNA
-- -- MOZE DA SE IZNEGNE 

-- mySum :: Num a => [a] -> a 
-- mySum [] = 0
-- mySum (x:xs) = x + (mySum xs)
-- -- mySum lst = if null list then 0 else (head lst) + (mySum (tail lst))

-- mySum' :: Num a => [a] -> a 
-- mySum' lst = 
--   let mySumHelper acc values = case values of 
--                                 [] -> acc 
--                                 (x:xs) -> mySumHelper (acc + x) xs 
--   in mySumHelper 0 lst

-- mySum'' :: Num a => [a] -> a
-- -- mySum'' xs = foldl (\acc x -> acc + x)  0 xs 
-- -- mySum''  = foldl (+)  0 -- skracivanje funkcije 
-- -- mySum'' (x:xs) = foldl (+) x xs 
-- mySum'' = foldl1 (+) 

-- myFilter :: Num a => (a -> Bool) -> [a] -> [a]
-- myFilter p lst = 
--   let myFilterHelper acc values = case values of
--                                     [] -> acc 
--                                     (x:xs) -> myFilterHelper (if p x then acc ++ [x] else acc) xs 
--   in myFilterHelper [] lst

-- myFilter' p xs = foldr (\x acc -> if p x then x:acc else acc) [] xs 

-- myConcat :: [a] -> [a] -> [a]
-- muConcat ls rs = foldr (:) rs ls 

import Data.Char 

-- takeWhile 
-- dropWhile

-- point free zapis 

takeWord :: String -> String 
-- takeWord sentence = takeWhile (not . isSpace) (dropWhile isSpace sentence)
-- takeWord sentence = takeWhile (not . isSpace) . dropWhile isSpace
takeWord =  let isNotSpace = not . isSpace 
            in takeWhile isNotSpace . dropWhile isSpace

filteredByIndex p xs = 
  let withIndices xs = zip [1..] xs 
      indexed        = withIndices xs 
      pair_predicate  = p . fst
  in map snd $ filter pair_predicate indexed 


-- $ je primena funkcije !!!

fns = [(+1), (+3), (\x -> x^2)]
