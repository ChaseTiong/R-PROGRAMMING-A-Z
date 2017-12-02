# Homework 1 - Test the Law of Large Number for N random normally distributed numbers with mean = 0, stdev = 1

# Create an R script that will count how many of these numbers fall between -1 and 1
# and divide by the total quantity of N

# Theoretical E(X) = 68.2%
# Find out N that could result E(X) to be = 68.2%


expX <- 0
n <- 0
numInRange <- 0
# rounding expX to 4 decimal place
while (round(expX, 4) != 0.6820) { # Create a while loop to stop when E(X) is 68.2%
  n <- n + 1 # Counting total number generated
  value <- rnorm(1) # Generate new random number
  if (value >= -1 & value <= 1) { # check if within range
    numInRange <- numInRange + 1 # if within range, increment count 
  }
  expX <- numInRange / n # Calculate expected X
  display <- paste("Current expected X : ", expX)
  print(display) # Print out current expected X while computing
}

# print out the n needed to reached 68.2
print(n)
