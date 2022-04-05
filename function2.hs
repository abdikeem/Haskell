{-
This is a recursive function. It is defined it terms of itself.
-}
{- increasing :: (Ord a) => [a] -> Bool
increasing xs = if xs == []
    then True
    else if tail xs == []
        then True
        else if head xs <= head (tail xs)
            then increasing (tail xs)
            else False -}

-- Haskell format
increasing :: (Ord a) => [a] -> Bool
increasing [] = True
increasing[x] = True
increasing (x:y:ys) = x <= y && increasing (y:ys)