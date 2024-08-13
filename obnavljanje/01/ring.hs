-- type Ring w = [w]
-- data Ring w = [w]
newtype Ring w = MkRing [w]

fromList:: [w] -> Ring w
fromList = MkRing

toList:: Ring w -> [w]
toList (MkRing ws) = ws

openWindow:: w -> Ring w -> Ring w
openWindow w (MkRing ws)= MkRing (w:ws)

closeWindow :: Ring w -> Ring w
closeWindow (MkRing []) = MkRing []
closeWindow (MkRing ws) = MkRing (tail ws)

-- ALT + TAB
switchActive:: Ring w -> Ring w
switchActive (MkRing [])                   = MkRing []
switchActive (MkRing [w])                  = MkRing [w]
switchActive (MkRing (active:next:others)) = MkRing (next:active:others)

-- multiple ALT + TAB
focusNext :: Ring w -> Ring w
focusNext (MkRing []) = MkRing []
focusNext (MkRing(w:ws)) = MkRing(ws ++ [w])

-- multiple SHIFT + ALT + TAB
focusPrevious:: Ring w -> Ring w
focusPrevious (MkRing ws) = MkRing (reverse . focusNext . reverse $ ws)

-- _a ==> rupa; nije jasno koji tip treba tu ici, stoga nije lose koristiti koncept rupa

-- r@(MkRing []) ==> ovo r dodaje citavo ime za pattern u zagradi
