elementosEnPosicionesPares :: [a] -> [a]
elementosEnPosicionesPares [] = []
elementosEnPosicionesPares (x:xs) = if null xs
                                    then [x]
                                    else x : elementosEnPosicionesPares (tail xs)

entrelazar :: [a] -> [a] -> [a]
entrelazar [] = id
entrelazar (x:xs) = \ys -> if null ys
                            then x : entrelazar xs []
                            else x : head ys : entrelazar xs (tail ys)


-- reescribir usando foldr

elementosEnPosicionesPares' xs = snd $ foldr (\x (index, acc) -> if even index
                                                        then (index - 1, x : acc)
                                                        else (index - 1, acc))
                                                        (length xs - 1, []) xs


entrelazarv2 :: [a] -> [a] -> [a]

entrelazarv2 = foldr (\ x acc ys -> if null ys
                                        then x : acc []
                                        else x : head ys : acc (tail ys)) id