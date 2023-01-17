## Every probability distribution (normal, gamma poisson) has four functions associated with them (r,d,p,& q)

##rnorm function: generate random normal variables with a given mean and standard deviation 
##dnorm function: evaluate Normal probability density (with a given mean/SD) at a point (or a vector of points)
##pnorm function: evaluate the cumulative distribution function for a normal distribution  
#qnorm function: evaluates the quantile  function
##rpois function:generate random Poisson variables with a given rate 
## dpois, pnois, qnois, rgamma, dgamma, pgamma, qgamma are also functions 


dnorm(x, mean =0, sd =1, log = FALSE)
##lower.tail simply means do we want to evaluate the lower or upper tail of the distribution 
pnorm(q, mean =0, sd =1, lower.tail = TRUE, log.p = FALSE)
qnorm(p, mean =0, sd =1, lower.tail = TRUE, log.p = FALSE)
## generate n numbers from the normal distribution 
rnorm(n, mean =0, sd =1)

## Generating random numbers 
## Setting the random number seed with set.seed ensures reproducibility
## Set.seed allows us to redraw the same random numbers 

#Example of set.seed
set.seed(1)
rnorm(5)
#When we re-run rnorm(5) without re setting the seed =1 ( set.seed(1) ), we will get a totally different 5 numbers
rnorm(5)
# We must re set seed = 1 to get the same random numbers 
set.seed(1)
rnorm(5)

## Generating Possion random data (mean is roughly equal to the rate)
## Generate 10 Possion random variables with a rate of 1 
rpois(10,1)
## Generate 10 Possion random variables with a rate of 2
rpois(10,2)
## Generate 10 Possion random variables with a rate of 20
rpois(10,20)

## Evaluate the cumulative distribution for poisson random data 
## What is the probability that a poisson random variable is less than or equal to 2, if the rate is equal to 2
ppois(2,2)
## What is the probability that a poisson random variable is less than or equal to 4, if the rate is equal to 2
ppois(4,2)
## What is the probability that a poisson random variable is less than or equal to 6, if the rate is equal to 2
ppois(6,2)