{-# LANGUAGE BangPatterns #-}

import qualified Data.HashTable as H (new, insert, lookup, hashInt)
import Control.Monad

main :: IO ()
main = do
  h <- H.new (==) H.hashInt
  forM_ [1..n] $ \ !x -> H.insert h x x
  print =<< H.lookup h 100
  where
    n = 10^7
