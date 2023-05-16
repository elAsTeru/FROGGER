module Main (main) where

import Graphics.Gloss
import Graphics.Gloss.Juicy

------------------------
-- Displayの設定
------------------------
wndW, wndH :: Num a => a
wndW = 896
wndH = 1024

wnd :: Display
wnd = InWindow "FROGGER" (wndW, wndH) (100, 100)

main :: IO ()
main = do
 Just img <- loadJuicy "img\\frog.png"
 display wnd white (scale 0.5 0.5 img)