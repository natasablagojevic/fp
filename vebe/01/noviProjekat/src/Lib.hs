module Lib where

-- kako cuvati prozor?
-- openWindow 
-- closeWindow 
-- switchActive (1x alt-tab)
-- focusNext (vise x alt-tab)
-- focusPrevies (shift-alt-tab)


-- type Ring a = [a]
newtype Ring a = MkRing [a]

-- konstruktor liste
fromList:: [a] -> Ring a 
fromList = MkRing

toList:: Ring a -> [a]
toList (MkRing ws) = ws 

-- _a => rupa (Dace skup simbola koje smo koristili i kontekst i sta 
-- su potenicjalini mecovi)






openWindow :: a -> Ring a -> Ring a
openWindow w (MkRing ws) = MkRing (w:ws)
-- openWindow = (:)


-- (:) konstruktor liste 


closeWindow :: Ring a -> Ring a
closeWindow r@(MkRing []) = r
closeWindow (MkRing ws) = MkRing (tail ws)
-- closeWindow (_:ws) = ws 

switchActive:: Ring a -> Ring a
switchActive r@(MkRing []) = r
switchActive r@(MkRing [w]) = r
switchActive (MkRing (active:next:others)) =  MkRing (next:active:others)

focusNext:: Ring a -> Ring a 
focusNext r@(MkRing []) = r
focusNext (MkRing (w:ws)) = MkRing (ws ++ [w]) 

focusPrev:: Ring a -> Ring a
focusPrev = reverse . focusNext . reverse 
-- focusPrev ws = reverse (focusNext (reverse ws))
-- focusPrev ws = reverse $ focusNext $ reverse ws 

-- $ desna asocijativnost (primena funkcije)
-- . kompozicija funkcije