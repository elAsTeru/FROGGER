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


data Int2 = Int2
 {
  x :: Int,
  y :: Int
 }
initInt2 :: Int2
initInt2 = Int2 0 0

main :: IO ()
main = do
 -- 何も実行しないときにエラーが出ないように
 putStrLn "= = = Run frogger exe = = ="
 
 -- イメージ読み込み
 Just img <- loadJuicy "img\\frog32.png"
 display wnd white (translate (0) (-200) img)