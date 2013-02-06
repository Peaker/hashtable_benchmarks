{-# LANGUAGE BangPatterns #-}

import qualified Data.HashTable.IO as H

main :: IO ()
main = do
  h <- H.fromList [(x,x) | x <- [1..n]] :: IO (H.BasicHashTable Int Int)
  print =<< H.lookup h 100
  where
    n = 10^(7 :: Int)
