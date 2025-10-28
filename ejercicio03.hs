import Data.Char (isUpper)

-- a
sumaLista :: [Int] -> Int
sumaLista = sum

-- b
mayoresQue10 :: [Int] -> Int
mayoresQue10 = length . filter (>10)

-- c
productoLista :: [Int] -> Int
productoLista = foldr (*) 1

-- d
celsiusAFahrenheit :: [Double] -> [Double]
celsiusAFahrenheit = map (\c -> c * 1.8 + 32)

-- e
ajustarImpares :: [Int] -> [Int]
ajustarImpares = map (\x -> if odd x then x + 5 else x)

-- Con filter
nombresLargos :: [String] -> [String]
nombresLargos = filter (\x -> length x > 5)

soloNegativos :: [Int] -> [Int]
soloNegativos = filter (<0)

edadesUniversitarios :: [Int] -> [Int]
edadesUniversitarios = filter (\x -> x >= 18 && x <= 25)

-- filter + map
agregarIVA :: [Double] -> [Double]
agregarIVA = map (\x -> if x >= 1000 then x*1.19 else x)

longitudesVocales :: [String] -> [Int]
longitudesVocales = map length . filter (\x -> head x `elem` "aeiouAEIOU")

cuadradosPares :: [Int] -> [Int]
cuadradosPares = map (^2) . filter even

-- any / all
hayNegativo :: [Int] -> Bool
hayNegativo = any (<0)

todosPares :: [Int] -> Bool
todosPares = all even

nombresCorrectos :: [String] -> Bool
nombresCorrectos = all (\x -> not (null x) && isUpper (head x))

-- takeWhile / dropWhile
menoresQue100 :: [Int] -> [Int]
menoresQue100 = takeWhile (<100)

sinCerosIniciales :: [Int] -> [Int]
sinCerosIniciales = dropWhile (==0)