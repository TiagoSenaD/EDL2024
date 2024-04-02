polinomio :: Int -> Int
polinomio x = x^2 + 10*x + 2

quadrado :: Int -> Int
quadrado n = n^2

delta :: Double -> Double -> Double -> Double
delta a b c = (b^2) - (4*a*c)


bascara :: Double -> Double -> Double -> (Double,Double)
bascara a b c
        | delta a b c >= 0 = (((-b + sqrt(delta a b c))/2*a),((-b - sqrt(delta a b c))/2*a))
        | delta a b c < 0 = error "raiz imaginaria"