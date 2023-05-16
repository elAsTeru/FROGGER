module Main (main) where

import Graphics.Gloss

------------------------
-- Displayの設定
------------------------
wndW, wndH :: Num a => a
wndW = 896
wndH = 1024

wnd :: Display
wnd = InWindow "FROGGER" (wndW, wndH) (100, 100)

main :: IO ()
main = display wnd white(translate (-150) (-10) . scale 0.5 0.5 $ text "Hello Haskell")
