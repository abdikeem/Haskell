{-
fst takes a pair and returns its first component.
snd takes a pair and returns its second component.
A cool function that produces a list of pairs: zip. It takes two lists and then zips them together into one list by
joining the matching elements into pairs.
eg: 
-ghci> zip [1,2,3,4,5] [5,5,5,5,5]
[(1,5),(2,5),(3,5),(4,5),(5,5)]
-ghci> zip [1 .. 5] ["one", "two", "three", "four", "five"]
[(1,"one"),(2,"two"),(3,"three"),(4,"four"),(5,"five")] 

-}