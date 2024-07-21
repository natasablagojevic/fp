-- definisati funkciju koja sumira listu 

-- : konstruktor za listu i destruktor 

suma :: Num a => [a] -> a  
suma [] = 0
suma (x:xs) = x + (suma xs)  -- pattern matching


suma' = foldr (+) 0 

suma'' [] = 0
suma'' lst = fold1 (+) lst 


suma''' = sum 

duzina :: Num a => [a] -> Int 
duzina [] = 0
duzina (x:xs) = 1 + (duzina xs) 

-- foldl (\acc v -> )

duzina' lst = foldl (\acc _ -> acc + 1) 0 lst 

duzina'' lst = foldl (+1) 0 lst 

filter' :: (a -> Bool) -> [a] -> [a] 
filter' p lst = foldl f [] lst  
  where f acc e = if p e then acc ++ [e] else acc




-- sum lst = if ??  then 0 else ..


-- types (Int, Float, Bool)
-- classes (Num, Ord)