-- Ejercicio 1 - Manejo de listas

-- 1.1 Recursión
miLength :: [a] -> Int
miLength [] = 0
miLength (_:xs) = 1 + miLength xs

miLast :: [a] -> a
miLast [x] = x
miLast (_:xs) = miLast xs

duplicar :: [Int] -> [Int]
duplicar [] = []
duplicar (x:xs) = (2*x) : duplicar xs

eliminarPares :: [Int] -> [Int]
eliminarPares [] = []
eliminarPares (x:xs)
    | even x = eliminarPares xs
    | otherwise = x : eliminarPares xs

-- 1.2 Orden superior
miLength2 :: [a] -> Int
miLength2 = foldr (\_ acc -> acc + 1) 0

miLast2 :: [a] -> a
miLast2 = foldr1 (\_ acc -> acc)

duplicar2 :: [Int] -> [Int]
duplicar2 = map (*2)

eliminarPares2 :: [Int] -> [Int]
eliminarPares2 = filter odd