import Data.HashMap.Strict
main = print $ fromList [(x,x)|x<-[1..10^(7::Int)::Int]] ! 100
