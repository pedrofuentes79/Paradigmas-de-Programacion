
sumaMat :: [[Int]] -> [[Int]] -> [[Int]]

--original
sumaMat = zipWith (\xs ys -> zipWith (+) xs ys)
--simplificado
sumaMatv2 = zipWith (zipWith (+))

trasponer :: [[Int]] -> [[Int]]


trasponer = zipWith (\xs ys -> xs ++ ys)