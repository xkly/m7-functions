# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a, b) {
  difference <- abs(length(a) - length(b))
  return (paste("The difference in length is", difference))
}

# Pass two vectors of different length to your `CompareLength` function
vector1 <- (1:6)
vector2 <- (1:4)
CompareLength(vector1, vector2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  difference <- length(v1) - length(v2)
  if (difference > 0) {
    return (paste("Your first vector is longer by", abs(difference), "elements"))
  } else if (difference < 0) {
    return (paste("Your second vector is longer by", abs(difference), "elements"))
  } else (
    return ("Your vectors are of the same length")
  )
}

# Pass two vectors to your `DescribeDifference` function
vector3 <- (1:2)
vector4 <- (1:5)
DescribeDifference(vector3, vector4)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
SecondDescribeDifference <- function(v1, v2) {
  v1.name <- deparse(substitute(v1))
  v2.name <- deparse(substitute(v2))
  difference <- length(v1) - length(v2)
  if (difference > 0) {
    return (StateLonger(v1.name))
  } else if (difference < 0) {
    return (StateLonger(v2.name))
  } else {
    return (paste(v1.name, "and", v2.name, "are the same length"))
  }
}

# Takes the name of a vector and returns a string stating that it is the longer vector
StateLonger <- function(v.name) {
  return(paste(v.name, "is the longer vector"))
}

SecondDescribeDifference(vector1, vector2)
SecondDescribeDifference(vector2, vector4)
