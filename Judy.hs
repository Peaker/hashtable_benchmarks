{-# LANGUAGE BangPatterns #-}
import qualified Data.Judy as J
import Control.Monad
import Data.Word

main :: IO ()
main = do
  j <- J.new :: IO (J.JudyL Word)
  forM_ [1..n] $ \ !i -> J.insert i i j
  Just res <- J.lookup 100 j
  print res
  where
    n = 10^(7::Int)
