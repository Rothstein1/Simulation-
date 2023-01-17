## Generate random numbers from a linear model 
set.seed(20)
x <- rnorm(100)
e <- rnorm(100,0,2)

##Linear model example 1 
y <- .5 +2*x +e

summary(y)
plot(x,y)


## Linear model example with binary random variables 
set.seed(10)
x <- rbinom(100,1,0.5)
e <- rnorm(100,0,2)
y <- .5 +2*x +e

summary(y)
plot(x,y)

##Simulate from a poisson model 
## Model: (1)Y = poisson(mu) (output y has a poisson distribution with mean mu), & (2) log mu = Beta0 + Beta1 * x, & (3) beta0 =.5, beta1 =.3
set.seed(1)
x<- rnorm(100)
log.mu <- .5 + .3*x

## Simulate 100 poisson random variables and give it the exponential of the log mean 
y <- rpois(100, exp(log.mu))
summary(y)
plot(x,y)
x