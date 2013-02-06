import Data.IntMap

main :: IO ()
main = print $ m ! 100
  where
    m = fromDistinctAscList [(i,i) | i <- [1..10^(7::Int)]]
