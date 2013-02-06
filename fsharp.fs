do
  let m = System.Collections.Generic.Dictionary()
  for i = 1 to 10000000 do
    m.[i] <- i
  printf "%d\n" m.[100]
