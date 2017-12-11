module Main where

import Day5 as D5
import Criterion.Main

main :: IO ()
main = do

  day5Input <- readFile "./inputs/day5.input"

  defaultMain [
    bgroup "exitMutPart2"
      [ bench "Storeable Vector" $ whnf D5.exitMutPart2Storable day5Input
      , bench "Unboxed Vector" $ whnf D5.exitMutPart2Unboxed day5Input
      ]
    ]
