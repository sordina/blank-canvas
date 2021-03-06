module Main where

import Graphics.Blank

main = blankCanvas 3000 $ \ context -> loop context (0 :: Float)

loop context n = do
        send context $ do
                (width,height) <- size
                clearRect (0,0,width,height)
                beginPath()
                save()
                translate (width / 2,height / 2)
                rotate (pi * n)
                beginPath()
                moveTo(-100,-100)
                lineTo(-100,100)
                lineTo(100,100)
                lineTo(100,-100)
                closePath()
                lineWidth 10
                strokeStyle "green"
                stroke()
                restore()
        loop context (n + 0.01)

