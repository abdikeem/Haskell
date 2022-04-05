{-
This is a recursive function. It is defined it terms of itself.
-}
increasing :: (Ord a) => [a] -> Bool
increasing xs = if xs == []
    then True
    else if tail xs == []
        then True
        else if head xs <= head (tail xs)
            then increasing (tail xs)
            else False