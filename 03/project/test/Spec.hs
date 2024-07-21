import Lib
import Data.Function (on)
import Test.QuickCheck
import Lib ( fromList
           , toList
           , focusNext
           , focusPrev
           , closeWindow
           , openWindow
           )

main:: IO ()
main = putStrLn "Test suite not yet implementer"

prop_conversions :: [Int] -> Bool
prop_conversions lst = lst == (toList $ fromList $ lst)
-- prop_conversions = (==) (toList $ fromList $ lst)

-- toList . fromList :: [a] -> [a]
-- toList :: Ring a -> [a]
-- fromList :: [a] -> Ring a 

-- [a] -> [a]

prop_focusNext_focusPrev lst = lst == (toList $ focusPrev $ focusNext $ fromList lst)
  where types = lst :: [Int]

prop_focusPrev_focusNext lst = lst == (toList $ focusNext $ focusPrev $ fromList lst)
  where types = lst :: [Int]

-- prop_comosition :: (Ring t -> Ring t) -> (Ring t -> Ring t) -> [t] -> Bool 
-- prop_comosition f1 f2 lst = lst == (toList $ f1 $ f2 $ fromList lst)

-- prop_comosition' :: [(Ring t -> Ring t)] -> [t] -> Bool 
-- preko folda da se implementira


-- prop_focusPrev_focusNext = prop_comosition focusPrev focusNext 
-- prop_focusNext_focusPrev = prop_comosition focusNext focusPrev 

-- data Square = MkSquare Int 

-- prop_test :: Square -> Bool 
-- prop_test = ... 

-- Arbitary -> vraca vrednost i mogu da izgenerisem vrednsti mog tipa
-- shrink 