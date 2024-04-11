l1 :: Num a => [a] -> a
l1 = foldr (-) 0

l2 :: Num a => [a] -> a
l2 = foldl (-) 0
