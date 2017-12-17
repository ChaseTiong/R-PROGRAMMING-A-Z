# R-PROGRAMMING-A-Z Helpsheet
Learning R Programming

##### Content page
* [Shortcut](#shortcut)
* [Types of Variable](#types)
* [Variable Operators](#operators)
* [Logical Operators](#logicaloperators)
* [Loops / If](#loops)
* [Vectors](#vectors)
* [Naming Vectors](#nameV)
* [Vectors Arithmetic](#vectorsA)
* [Packages](#package) 
* [Matrices](#matrix)
* [Functions](#function)


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

> #### Import Data

```r
# Method 1 : Select the file manually
stats <- read.csv(file.choose()) # This allows the user to select the csv file to import into variable

# Method 2 : Set working directory and read data
getwd() # will return the current working directory

setwd("/Users/Chase/R-PROGRAMMING-A-Z") # to set the directory that file is located at
stats <- read.csv("DemographicData.csv") # Read the csv file and store into variable
```

> #### Exploring dataset

```r
nrow(stats) # Output the number of rows in the dataset

ncol(stats) # Output the number of columns in the dataset

head(stats, n = 10) # Output the first 10 rows of the dataset, default n = 6

tail(stats, n = 8) # Output the last 8 rows of the dataset, default n = 6

str(stats) # Auto convert datas into category and display in category format
'data.frame':	195 obs. of  5 variables:
 $ Country.Name  : Factor w/ 195 levels "Afghanistan",..: 8 1 4 2 183 6 7 5 9 10 ...
 $ Country.Code  : Factor w/ 195 levels "ABW","AFG","AGO",..: 1 2 3 4 5 6 7 8 9 10 ...
 $ Birth.rate    : num  10.2 35.3 46 12.9 11 ...
 $ Internet.users: num  78.9 5.9 19.1 57.2 88 ...
 $ Income.Group  : Factor w/ 4 levels "High income",..: 1 2 4 4 1 1 3 1 1 1 ...
 
summary(stats) # Output the summary of the dataset
               Country.Name  Country.Code   Birth.rate    Internet.users 
 Afghanistan        :  1   ABW    :  1   Min.   : 7.90   Min.   : 0.90  
 Albania            :  1   AFG    :  1   1st Qu.:12.12   1st Qu.:14.52  
 Algeria            :  1   AGO    :  1   Median :19.68   Median :41.00  
 Angola             :  1   ALB    :  1   Mean   :21.47   Mean   :42.08  
 Antigua and Barbuda:  1   ARE    :  1   3rd Qu.:29.76   3rd Qu.:66.22  
 Argentina          :  1   ARG    :  1   Max.   :49.66   Max.   :96.55  
 (Other)            :189   (Other):189                                  
              Income.Group
 High income        :67   
 Low income         :30   
 Lower middle income:50   
 Upper middle income:48  
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

# Sequence - seq(from , to, step (default = 1))
seq(1,15) # Creates a vector from 1 (inclusive) to 15 (inclusive)

seq (1,15,2) # Creates a vector with step 2 from 1 (inclusive) to 15(inclusive)
# 1, 3, 5, 7, 9, 11, 13, 15

# Replicate - rep(variable, times) 
rep(5, 10) # Creates a vector of 5,5,5 ..., 5 (10 times)

# rep can be used on vector too.
result <- rep(5,10)
rep(result,2) # replicate vector twice

# rep can be used to replicate each elements multiple times

v <- c(1,2,3)
result <- rep(v,each=3)
result # [1] 1 1 1 2 2 2 3 3 3

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

##### Naming Vectors<a id="nameV"></a>

```r
# Named vectors

Charlie <- 1:5 # Create a vector from 1 to 5
Charlie # Output of Charlie is shown below

[1] 1 2 3 4 5

# Give name
names(Charlie) # Display out the column name of vector (Charlie)
# Output = NULL

names(Charlie) <- c("a","b","c","d","e")
# Giving the column name from a to e

Charlie # Output of Charlie is shown below

a b c d e 
1 2 3 4 5 

Charlie["d"] # output = 4
Charlie[4] # output = 4

names(Charlie) <- NULL # Setting the column name to NULL (Reset)
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

##### Package<a id="package"></a>

> #### Install package

```r
install.packages("ggplot2")
```

> #### To import package into R file

```r
library(ggplot2) 
```

##### Matrices<a id="matrix"></a>

> #### Creating matrix

```r
#matrix()
my.data <- 1:20
my.data

A <- matrix(my.data, 4, 5) #4 rows 5 columns 
# Default make the matrix by appending column

A # Below is the output of A

     [,1] [,2] [,3] [,4] [,5]
[1,]    1    5    9   13   17
[2,]    2    6   10   14   18
[3,]    3    7   11   15   19
[4,]    4    8   12   16   20

A[2,3] # Output Row 2 Column 3 = 10

B <- matrix(my.data, 4 ,5, byrow=1)
# Making the matrix by appending row
B # Below is the output of B

     [,1] [,2] [,3] [,4] [,5]
[1,]    1    2    3    4    5
[2,]    6    7    8    9   10
[3,]   11   12   13   14   15
[4,]   16   17   18   19   20

rbind() # Binding rows together
# rbind(vector1, vector2, vector3) -> to form a 3 rows matrix

r1 <- c("I", "am", "happy")
r2 <- c("What", "a", "day")
r3 <- c(1,2,3)
C <- rbind(r1,r2,r3)
C # Below is the output of C

   [,1]   [,2] [,3]   
r1 "I"    "am" "happy"
r2 "What" "a"  "day"  
r3 "1"    "2"  "3" 
# Numeral are converted to character as matrix need the elements to be of the same type.

cbind() # Binding columns together
# cbind(vector1, vector2, vector3) -> to form a 3 columns matrix

c1 <- 1:5
c2 <- -1:-5
D <- cbind(c1,c2)
D # Below is the output of D

     c1 c2
[1,]  1 -1
[2,]  2 -2
[3,]  3 -3
[4,]  4 -4
[5,]  5 -5

```

> #### Naming Matrix Rows & Columns

```r
v <- rep(c("a","b","c"),each=3)
v #[1] "a" "a" "a" "b" "b" "b" "c" "c" "c"

Bravo <- matrix(v, 3, 3)
Bravo
     [,1] [,2] [,3]
[1,] "a"  "b"  "c" 
[2,] "a"  "b"  "c" 
[3,] "a"  "b"  "c" 

rownames(Bravo) <- c("how", "are", "you") # Setting the name of the rows
colnames(Bravo) <- c("X", "Y", "Z")
Bravo # Setting the name of the columns
    X   Y   Z  
how "a" "b" "c"
are "a" "b" "c"
you "a" "b" "c"

Bravo["are","Y"] <- 0 # Replacing value of Row 2 Column 2
Bravo
    X   Y   Z  
how "a" "b" "c"
are "a" "0" "c"
you "a" "b" "c"

rownames(Bravo) # [1] "how" "are" "you"
colnames(Bravo) # [1] "X" "Y" "Z"

```

> #### Accessing matrix entries

```r
# Accessing matrix row
A[1,] # Accessing first row
A[2,] # Accessing second row

# Accessing matrix column
A[,1] # Accessing first column
A[,2] # Accessing second column

# Accessing matrix element
A[1,1] # Accessing element of first row and first column
A[3,3] # Accessing element of third row and third column
```

> #### Matrix Arithmetic

```r
# Same as vector, we can just do normal mathematics Arithmetic in R.

Games # Output is shown below
               2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
KobeBryant       80   77   82   82   73   82   58   78    6   35
JoeJohnson       82   57   82   79   76   72   60   72   79   80
LeBronJames      79   78   75   81   76   79   62   76   77   69
CarmeloAnthony   80   65   77   66   69   77   55   67   77   40
DwightHoward     82   82   82   79   82   78   54   76   71   41
ChrisBosh        70   69   67   77   70   77   57   74   79   44
ChrisPaul        78   64   80   78   45   80   60   70   62   82
KevinDurant      35   35   80   74   82   78   66   81   81   27
DerrickRose      40   40   40   81   78   81   39    0   10   51
DwayneWade       75   51   51   79   77   76   49   69   54   62

FieldGoals # Output is shown below
               2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
KobeBryant      978  813  775  800  716  740  574  738   31  266
JoeJohnson      632  536  647  620  635  514  423  445  462  446
LeBronJames     875  772  794  789  768  758  621  765  767  624
CarmeloAnthony  756  691  728  535  688  684  441  669  743  358
DwightHoward    468  526  583  560  510  619  416  470  473  251
ChrisBosh       549  543  507  615  600  524  393  485  492  343
ChrisPaul       407  381  630  631  314  430  425  412  406  568
KevinDurant     306  306  587  661  794  711  643  731  849  238
DerrickRose     208  208  208  574  672  711  302    0   58  338
DwayneWade      699  472  439  854  719  692  416  569  415  509

GoalsPerGame <- FieldGoals / Games
round(GoalsPerGame) # Output is shown below
               2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
KobeBryant       12   11    9   10   10    9   10    9    5    8
JoeJohnson        8    9    8    8    8    7    7    6    6    6
LeBronJames      11   10   11   10   10   10   10   10   10    9
CarmeloAnthony    9   11    9    8   10    9    8   10   10    9
DwightHoward      6    6    7    7    6    8    8    6    7    6
ChrisBosh         8    8    8    8    9    7    7    7    6    8
ChrisPaul         5    6    8    8    7    5    7    6    7    7
KevinDurant       9    9    7    9   10    9   10    9   10    9
DerrickRose       5    5    5    7    9    9    8  NaN    6    7
DwayneWade        9    9    9   11    9    9    8    8    8    8

# Transposing Matrix 
t(FieldGoals) # Flipping rows with columns and vice versa
```

> #### Matrix Subsetting

```r
Games # Print out the whole matrix
               2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
KobeBryant       80   77   82   82   73   82   58   78    6   35
JoeJohnson       82   57   82   79   76   72   60   72   79   80
LeBronJames      79   78   75   81   76   79   62   76   77   69
CarmeloAnthony   80   65   77   66   69   77   55   67   77   40
DwightHoward     82   82   82   79   82   78   54   76   71   41
ChrisBosh        70   69   67   77   70   77   57   74   79   44
ChrisPaul        78   64   80   78   45   80   60   70   62   82
KevinDurant      35   35   80   74   82   78   66   81   81   27
DerrickRose      40   40   40   81   78   81   39    0   10   51
DwayneWade       75   51   51   79   77   76   49   69   54   62

Games[1:3,5:7] # Print out the top 3 players from 2009 to 2011
            2009 2010 2011
KobeBryant    73   82   58
JoeJohnson    76   72   60
LeBronJames   76   79   62

Games[,c("2009","2012")] # Extract out information for Year 2009 and 2012.
               2009 2012
KobeBryant       73   78
JoeJohnson       76   72
LeBronJames      76   76
CarmeloAnthony   69   67
DwightHoward     82   76
ChrisBosh        70   74
ChrisPaul        45   70
KevinDurant      82   81
DerrickRose      78    0
DwayneWade       77   69

Games[1,] # Output is shown below, the 1st column "KobeBryant" is missing

2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 
  80   77   82   82   73   82   58   78    6   35 
  
is.matrix(Games[1,]) # False as it is returning as a vector
is.vector(Games[1,]) # True

# R automatically drops column or row of size of 1. 
# Hence, in order to get the result in Matrix data type, we have to set the parameter drop to false.

Games[1,,drop=FALSE]

           2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
KobeBryant   80   77   82   82   73   82   58   78    6   35

is.matrix(Games[1,,drop=FALSE]) # True
```

#### Matplot <a id="matplot"></a>

```r
matplot(t(FieldGoals/Games), type="b", pch=15:18, col=c(1:4,6))
# type - what kind of plot you want, line/dots or refer to ?plot for more type info
# pch - what kind of images you want to represent the points - dot, triangle, etc
# col - colour
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4,6), pch=15:18, horiz=0)
# inset - distance(s) from the margins as a fraction of the plot region when legend is placed by keyword.
# horiz - Display the legend in horizontal format (T/F)

# The above R code will draw out a line graph and compares the goals per game by each player with the legend for each player.
```

#### Functions <a id="function"></a>

```r
# Creating a function that take in data (matrix) or rows(the selected rows in the matrix)
myplot <- function(data, rows){
	Data <- data[rows,,drop=F]
	matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
	legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4,6), pch=15:18, horiz=0)
}

myplot(Salary, 1:10)

# Creating a function that take in data (matrix) or rows(the default selected rows value of the matrix is 1:10)
myplot <- function(data, rows=1:10){
	Data <- data[rows,,drop=F]
	matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
	legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4,6), pch=15:18, horiz=0)
}

myplot(Salary, 1:2) # or we can set the rows we want instead of the default value
```

#### DataFrames <a id="dataframe"></a>

```r
# Using $ sign - Extracting out the column

stats$Internet.users # Output the rows with the name Internet.users

stats#Internet.users[2] # Output the 2nd entry of the row.

# Extracting out category detail information
levels(stats$Income.Group) # Output the category and its associated name
[1] "High income"         "Low income"          "Lower middle income"
[4] "Upper middle income"

# Basic Operations with a DataFrame

# Multiply columns
stats$Birth.rate * stats$Internet.users
stats.$Birth.rate + stats$Internet.users

# Add column
stats$MyCalc <- stats$Birth.rate * stats$Internet.users # Adding a new column to the dataset

stats$xyz <- 1:5 # Creating a vector from 1 to 5 and put into stats dataset
# If the dataset has more than 5 rows, then it will repeatedly re-create the vector and fill up all rows.

# Remove column
stats$MyCalc <- NULL # Remove myCalc column
stats$xyz <- NULL # Remove xyz column

# Filtering Dataframes

filter <- stats$Internet.users < 2 # Will create a vector and store TRUE/FALSE value for column Internet.users that has value less than 2
stats[filter,] # Will use filter vector to extract out only the true values, in other words extracting out rows that have internet users that are less than 2

stats[stats$Internet.users < 2,] # Output the same as above but using the true values from Internet.users column

stats[stats$Birth.rate > 40 & stats$Internet.users < 2,] # Can use more than 1 filter to extract out rows

# Create Dataframes

# Method 1
mydf <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, Regions_2012_Dataset)
# Using data.frame function to convert the above vectors to dataframe
# To change colname/rowname is the same shown for matrix

head(mydf) # Output is shown below
Countries_2012_Dataset Codes_2012_Dataset Regions_2012_Dataset
1                  Aruba                ABW         The Americas
2            Afghanistan                AFG                 Asia
3                 Angola                AGO               Africa
4                Albania                ALB               Europe
5   United Arab Emirates                ARE          Middle East
6              Argentina                ARG         The Americas

# Method 2 Set the colname and create dataframe at the same time
mydf <- data.frame(Country=Countries_2012_Dataset, Code=Codes_2012_Dataset, Region=Regions_2012_Dataset)
head(mydf) # Output is shown below
               Country Code       Region
1                Aruba  ABW The Americas
2          Afghanistan  AFG         Asia
3               Angola  AGO       Africa
4              Albania  ALB       Europe
5 United Arab Emirates  ARE  Middle East
6            Argentina  ARG The Americas

# Merging Dataframes

head(stats) # Output is shown below
          Country.Name Country.Code Birth.rate Internet.users        Income.Group
1                Aruba          ABW     10.244           78.9         High income
2          Afghanistan          AFG     35.253            5.9          Low income
3               Angola          AGO     45.985           19.1 Upper middle income
4              Albania          ALB     12.877           57.2 Upper middle income
5 United Arab Emirates          ARE     11.044           88.0         High income
6            Argentina          ARG     17.716           59.9         High income

head(mydf) # Output is shown below
              Country Code       Region
1                Aruba  ABW The Americas
2          Afghanistan  AFG         Asia
3               Angola  AGO       Africa
4              Albania  ALB       Europe
5 United Arab Emirates  ARE  Middle East
6            Argentina  ARG The Americas

merged <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code") # Merging based on same value of its respective columns
head(merged)
  Country.Code         Country.Name Birth.rate Internet.users        Income.Group              Country       Region
1          ABW                Aruba     10.244           78.9         High income                Aruba The Americas
2          AFG          Afghanistan     35.253            5.9          Low income          Afghanistan         Asia
3          AGO               Angola     45.985           19.1 Upper middle income               Angola       Africa
4          ALB              Albania     12.877           57.2 Upper middle income              Albania       Europe
5          ARE United Arab Emirates     11.044           88.0         High income United Arab Emirates  Middle East
6          ARG            Argentina     17.716           59.9         High income            Argentina The Americas

```

#### QPlot <a id="qplot"></a>

```r
qplot(data=stats, x=Internet.users) 
# Output a graph that count of internet users for each country

qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(3), colour=I("blue")) 
# Output a graph while controlling the size and colour of the graph

qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(5), colour=Income.Group) 
# Output a graph with legend and color following Income.Group category

qplot(data=stats, x=Income.Group, y=Birth.rate, geom="boxplot") 
# Output a boxplot graph

qplot(data=stats, x=Income.Group, y=Birth.rate, shape=I(17)) 
# Changing the shape that is used to plot on the graph , Range from 1 to 25

qplot(data=stats, x=Income.Group, y=Birth.rate, shape=I(17), alpha=I(0.6)) 
# Changing the opaque range of the graph

qplot(data=stats, x=Income.Group, y=Birth.rate, shape=I(17), main ="BR vs IU") 
# Adding title to the graph
```