##Random Sampling
## sample function draws randomly from a specified set of scalar objects, allowing us to sample from aritrary distrubtuions 
set.seed(1)
## Sample 4 values randomly from the set of integers 1:10 
sample(1:10,4)
## Sample 4 random letters
sample(letters ,4)
## Returns a permutation of the set (the same set, but in a different order)
sample(1:10)

## Sample but with replacement 
sample(1:10, replace= TRUE)