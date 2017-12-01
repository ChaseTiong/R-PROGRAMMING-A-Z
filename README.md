# R-PROGRAMMING-A-Z Helpsheet
Learning R Programming

##### Content page
* [Shortcut](#shortcut)
* [Types of Variable](#types)
* [Variable Operators](#operators)
* [Logical Operators](#logicaloperators)
* [Loops / If](#loops)


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
rnorm(1) # return random numbers

# rnorm(n, mean, sd) , default mean = 0, sd = 1
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
c = paste(a,b)
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
