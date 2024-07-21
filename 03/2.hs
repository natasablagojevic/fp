infixr 5 :/:

data MyList a = Empty
              | (:/:) a (MyList a) 
              -- deriving (Show)

infixr 5 +/+ 

(+/+) :: MyList a -> MyList a -> MyList a 
-- ls (+/+) rs =  foldr (+/+) rs ls 
Empty (+/+) rs = rs 
(l:/:Empty) (+/+) rs = l (:/:) rs
(l:/:ls) (+/+) rs = l :/: (ls +/+ rs)

instance Show a => Show (MyList a) where 
  show lst = "[" ++ (show' lst ) ++ "]"
  where show'
    show' Empty = ""
    show' (x:/:Empty) = show x 
    show' (x:/:xs) = show x ++ ","  ++ show' xs 


-- (a -> b) -> fa -> f b 

instance Functor MyList where 
  fmap f Empty = Empty 
  fmap f (x:/:xs) = (f x) :/: (fmap f xs) 
  
   