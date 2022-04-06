{-
    Takes an Int and some element then returns a list taht has several repetitions of the same element.
    Eg:
        replicate 3 5 returns [5,5,5].
    Note: Num is not a subclass of Ord.
-}

replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
    | n <= 0 = [] -- If n is less than or equal to 0, return an empty list.
    | otherwise = x:replicate' (n-1) x -- else return a list that has x as the first element and then x replicated n-1 times as the tail.