-- lista_to_num [1,2,3] -- > 123
-- lista_to_num [0,9,0,9,0] -- > 9090

lista_to_num :: [Int] -> Int
lista_to_num list =  foldr (\digit acc -> digit + 10 * acc) 0 (reverse list) 


--Crie a função `indices` que recebe uma lista e retorna uma lista de tuplas com os elementos originais e seus índices:

indices :: [a] -> [(Int, a)]
indices lista = snd $ foldr (\x (index, acc) -> (index-1, (index-1, x) : acc)) (length lista, []) lista


indicess :: [a] -> [(Int, a)]
indicess lista = reverse $ snd $ foldr (\x (index, acc) -> (index+1, (index, x) : acc)) (0, []) (reverse lista)

main :: IO()
main = print $ indicess [10,20,30]
