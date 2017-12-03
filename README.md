# R-PROGRAMMING-A-Z Helpsheet
Learning R Programming

##### Content page
* [Shortcut](#shortcut)
* [Types of Variable](#types)
* [Variable Operators](#operators)
* [Logical Operators](#logicaloperators)
* [Loops / If](#loops)
* [Vectors](#vectors)
* [Vectors Arithmetic](#vectorsA)
* [Packages](#package) 


##### Shortcut <a id="shortcut"></a>

> #### Escape infinite loop 
	
```
Press esc button
```
	
> #### Remove variable from environment

```r
rm(variable)
```	

> #### Random normal distribution number

```r
rnorm(1) # return n number of random number

# rnorm(n, mean, sd) , default mean = 0, sd = 1
```

> #### To view help of the function
```r
?rnorm() # will display guide on the usage of the function

```

##### Types of Variables (Section 2)<a id="types"></a>

> #### Integer

```r
# Need to put a "L" behind to indicate that the value is an integer
x <- 2L # assigning integer value of 2 into x
 
typeof(x) # checking variable type
	return "integer"
```

> #### Double

```r
y <- 2.5 # assigning double value 

typeof(y) # checking variable type
	return "double"
```

> #### Complex

```r
z <- 3 + 2i # assigning complex value
 
typeof(z) # checking variable type
 	return "complex"
```

> #### Character

```r
a <- "b"
 
typeof(a) # checking variable type
	return "character"
```

> #### Logical / Boolean

```r
isFull <- T # can put T/TRUE/F/FALSE
 
typeof(isFull) # checking variable type
 	return "logical"
```

##### Variable Operators<a id="operators"></a>

> #### For numeral digits

```r
# + - / *
a <- 2
b <- 3
c <- 4
d <- a + b

sqrt(c) # print out 2
d # print out 5
```

> #### For characters

```r
# paste function is used to concatenate strings/characters
 
a <- "hi"
b <- "bob"
c <- paste(a,b)
c # print out "hi bob"
```

##### Logical Operators<a id="logicaloperators"></a>

```r 
== # equal
!= # not equal
< # less than
> # more than
>= # more and equal
<= # less and equal
! # not
| # or (Different from other languages)
& # and (Different from other languages)
isTRUE(x) # primitive function to check if the variable is TRUE
```

##### Loops & If else<a id="loops"></a>

```r
# while loop
while(TRUE) {
	print("Hello")
} # infinite loop
 
# for loop
for(i in 1:5) {
	print("Hello R")
} # print "Hello R" 5 times
 
# if / else if
if (x < 10) {
	print ("hello")
} else if (x < 20) {
	print ("bye bye")
} else {
	print ("error")
}
```

##### Vectors<a id="vectors"></a>

```r
# Vector in R only accept elements of the same data type

# Creating a vector using primitive function combine
vector <- c(3,43,56,732) # Creates a vector of double elements

vector<- c ("a", "b", 7) # Creates a vector of character elements 
# 7 will be auto converted to character

is.numeric(vector) # Check if the variable is numeric
is.integer(vector) # Check if the variable is integer
is.double(vector) # Check if the variable is double
is.character(vector) # Check if the variable is character

# sequence - seq(from , to, step (default = 1))
seq(1,15) # Creates a vector from 1 (inclusive) to 15 (inclusive)

seq (1,15,2) # Creates a vector with step 2 from 1 (inclusive) to 15(inclusive)
# 1, 3, 5, 7, 9, 11, 13, 15

rep(variable, times) # Replicate
rep(5, 10) # Creates a vector of 5,5,5 ..., 5 (10 times)

# rep can be used on vector too.
result <- rep(5,10)
rep(result,2) # replicate vector twice

# Accessing vectors elements

# Index in R starts from 1
w <- ("a", "b", "c", "d", "e")

w[1] # returns value "a"
w[2] # returns value "b"
w[-1] # returns all values except for the specified index -> "b", "c", "d", "e"
w[-3] # returns "a", "b", "d", "e"
w[1:3] # returns first element to the third element -> "a", "b", "c"
w[c(1,3,5) #returns the element of the specified index -> "a", "c", "e"
```

##### Vectors Arithmetic <a id="vectorsA"></a>
```r
# R is a vectorised programming language
# Can just do normal arithmetic operations on two vectors

# Note that : Operating on vectors of different sizes will require 
# the size of the bigger vector to be multiples of the size of the smaller vector
# R will clone the smaller vector multiple times and execute the arithmetic operations with the two vectors

# In the case of the size of the bigger vector is not multiples of the size of 
# the smaller vector, R will still clone the smaller vector and issue a warning to inform the user.
```

##### Packages<a id="packages"></a>
```r
# Install package command
install.packages("ggplot2")

# To import package into R file
library(ggplot2) 
```
