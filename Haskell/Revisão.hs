type Aluno = (String, Double, Double)

mediaprovados :: [Aluno] -> [String]
mediaprovados lista = map (\(nome,_,_) -> nome) (filter (\(_,n1,n2) -> ((n1 + n2)/2)>= 7) lista)

medireprovados :: [Aluno] -> [String]
medireprovados lista = map (\(nome,_,_) -> nome) (filter (\(_,n1,n2) -> ((n1 + n2)/2) < 7) lista)

mediaturma :: [Aluno] -> Double
mediaturma lista = foldr (\(_,n1,n2) acc -> ((n1 + n2)/2) + acc) 0 lista / fromIntegral (length lista)

mediaturmamap :: [Aluno] -> Double
mediaturmamap lista = (foldr (\nota acc -> acc + nota ) (0) (map (\(_, n1, n2) -> (n1+n2)/2 ) lista)) / fromIntegral (length lista)


alunos = [("Joao", 7.0, 8.0), ("Maria", 6.0, 9.0), ("Jose", 4.0, 5.0), ("Ana", 8.0, 9.0), ("Pedro", 3.0, 2.0), ("Paula", 10.0, 10.0), ("Carlos", 7.0, 7.0), ("Marta", 6.0, 6.0), ("Lucas", 5.0, 5.0), ("Luana", 9.0, 9.0)]

-- Imprimindo o resultado
main :: IO ()
main = print $ medireprovados alunos
