
-- definicija modula, pomocu kojim mozemo da ih importujemo i menadzujemo 
module Lib where 
import GHC.IO.Device (IODevice(close))

-- ne mozemo da imamo stanje
openWindow :: w -> [w] -> [w]
openWindow = (:)



closeWindow :: [w] -> [w]
closeWindow [] = []
closeWindow (_:xs) = xs 

-- alternative
-- closeWindow [] = []
-- closeWindow lst = tail lst

switchActive :: [w] -> [w]
switchActive [] = []
switchActive [x] = [x]
switchActive (active:next:others) = next:active:others

focusNext :: Int -> [w] -> [w]
focusNext _ [] = []
focusNext i ws = fst $ foldl f ([choosen],0) ws
  where 
    choosen = ws !! i
    f (acc, ti) w = (if i == ti then acc else acc ++ [w], ti+1)
    


-- focusPrev 


