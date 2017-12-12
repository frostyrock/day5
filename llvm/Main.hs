{-# LANGUAGE FlexibleContexts #-}

module Main where

import Criterion.Main
import Prelude as P
import Control.Monad
import Control.Monad.ST
import Data.Vector.Generic as G
import Data.Vector.Generic.Mutable as M
import Data.Vector.Unboxed as U
import Data.Vector.Storable as S

makeVector :: (G.Vector v Int) => String -> v Int
makeVector str =  G.fromList $ P.read <$> words str

exitMutPart2Unboxed :: String -> Int
exitMutPart2Unboxed str = exitMut ((makeVector str)::U.Vector Int)

exitMutPart2Storable :: String -> Int
exitMutPart2Storable str = exitMut ((makeVector str)::S.Vector Int)

exitMut :: (G.Vector v Int) => v Int -> Int
exitMut vec = runST $ do
  mutable <- G.thaw vec
  loop mutable 0 0
  where
    len = G.length vec
    loop mut idx acc =
      if  idx  < 0 || idx >= len then return acc
      else do
        c <- M.unsafeRead mut idx
        M.unsafeWrite mut idx (if c >= 3 then c - 1 else c + 1)
        loop mut (idx + c) (acc + 1)


main :: IO ()
main = do

  day5Input <- readFile "./inputs/day5.input"

  defaultMain [
    bgroup "exitMutPart2"
      [ bench "Storable Vector" $ whnf exitMutPart2Storable day5Input
      , bench "Unboxed Vector" $ whnf exitMutPart2Unboxed day5Input
      ]
    ]
