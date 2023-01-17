########################
##STR FUNCTION- START###
########################

## str function (stands for structure) displays the internal structure of an R object
## It is well suited to compactly display the contents of (possibly nested) lists 
## Str helps us (1) quickly examine the data in r, & (2) understand the structure of different r objects  

##Example 1
## str is a function that can take any R object as the input argument 
str(str)
## 
## The below outputs the function arguments for the lm function 
str(lm)


## Example 2

x <- rnorm(100,2,4)

## Summary gives us summary stats
summary(x)

##str tells us (1) x is a numeric vector, (2) with 100 elements, (3) and it prints the first 5 values in the vector
## This helps us understand the data 
str(x)

## Example 3 (with a factor variable)
# Below is a 40 level factor, each level repeats 10 times 
f <- gl(40,10)
f
str(f)
summary(f)

## Example 4 (with a dataframe)
library(datasets)
head(airquality)
str(airquality)

## Example 5 (matrix)
m <- matrix(rnorm(100), 10, 10)

## str tells us: (1) matrix is a 2 dimensional array made up of numeric values with 10 columns and 10 rows, (2)first couple elements from the first column
str(m)


## Example 6 (list)

s <- split(airquality, airquality$Month)
s
## str tells us: (1) this is a list made up of 5 data frames (each data frame represents data for a given month), (2) how many observations & variables there are in each data frame
str(s)

########################
##STR FUNCTION- END#####
########################