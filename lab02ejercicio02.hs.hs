-- Ejercicio 2 - Listas por comprensión

-- a
cuadrados10 :: [Int]
cuadrados10 = [x*x | x <- [1..10]]

-- b
divisiblesPor3 :: [Int]
divisiblesPor3 = [x | x <- [1..30], x `mod` 3 == 0]

-- c
paresXY :: [(Int,Int)]
paresXY = [(x,y) | x <- [1..5], y <- [1..5], x < y]

-- divisores de un número
divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], n `mod` x == 0]

divisoresPropios :: Int -> [Int]
divisoresPropios n = [x | x <- divisores n, x /= n]

esPerfecto :: Int -> Bool
esPerfecto n = sum (divisoresPropios n) == n