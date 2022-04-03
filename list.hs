{-
In Haskell, lists are a homogenous data structure
Homogeneous data structures are ones that can only store a single type of data.
Heterogeneous data structures are ones that can store more than one type of data at the same time.
elem takes a thing and a list of things and tells us if that thing is an element of the list.

    A handful of functions that produce infinite lists:
-cycle takes a list and cycles it into an infinite list.
-repeat takes an element and produces an infinite list of just that element. It's like cycling a list with only one
element.
NB:Although it's simpler to just use the replicate function if you want some number of the same element in a list.
replicate 3 10 returns [10,10,10].

eg: [ x | x <- [50..100], x `mod` 7 == 3] // this returns all values from 50 to 100 that when divided by 7 the reminders are 3.

 Note that weeding out lists by predicates is also called filtering.

QUIZ: Let's say we want a comprehension that replaces each odd
number greater than 10 with "BANG!" and each odd number that's less than 10 with "BOOM!". If a number isn't
odd, we throw it out of our list.
Answers:
- ghci> boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
- ghci> boomBangs [1..15] // you can use any number you wish like.

_ means that we don't care what we'll draw from the list anyway so instead of writing a variable name that we'll
never use, we just write _.
eg: length' xs = sum [1 | _ <- xs] 
-}

