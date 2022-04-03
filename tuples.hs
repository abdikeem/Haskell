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

Quiz:
    solve a puzzle, among the numbers one to eight when does the smaller number have longer word 
Answer:
Step 1 - let numbers = [1..8]
step 2 - let words = ["one", "two", "three", "four", "five", "six", "seven", "eight"]
step 3 - let pairs = zip numbers words
step 4 - [(fst p , fst q) | p <- pairs, q <-pairs]
step 5 - [(fst p , fst q) | p <- pairs, q <-pairs, fst p < fst q]
step 6 - [(fst p , fst q) | p <- pairs, q <-pairs, fst p < fst q, length(snd p) > length(snd q)]

-}