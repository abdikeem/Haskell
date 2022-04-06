maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Maximum of an empty list" -- condition says that if the list is empty, crash!.
maximum' [x] = x -- condition says that if it's the singleton list, just give back the only element.

-- Here We use pattern matching to split a list into a head and a tail.
maximum' (x:xs)
    | x > maxTail = x -- if head is greater than the maximum of the rest of the list.Then we return head.
    | otherwise = maxTail -- else return the maximum of the rest of the list.
    where maxTail = maximum' xs -- We use a where binding to define maxTail as the maximum of the rest of the list.
