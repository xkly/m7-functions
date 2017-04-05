# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a, b) {
  difference <- abs(length(a) - length(b))
  return (paste("The difference in length is", difference))
}

# Pass two vectors of different length to your `CompareLength` function
vector1 <- c(1, 5, 7, 3, 6, 4)
vector2 <- c(4, 3, 8, 9)
CompareLength(vector1, vector2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  selected <- "first"
  if (length(v1) < length(v2)) {
    selected <- "second"
  }
  length <- abs(length(v1) - length(v2))
  return (paste("Your", selected, "vector is longer by", length, "elements"))
}

# Pass two vectors to your `DescribeDifference` function
vector3 <- c(3, 6)
vector4 <- c(0, 7, 9, 6, 8)
DescribeDifference(vector3, vector4)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
AltDescribeDifference <- function(v1, v2) {
  vector.name <- substitute(v1)
  if (length(v1) < length(v2)) {
    vector.name <- substitute(v2)
  }
  return (paste(vector.name, "is the longer vector"))
}
AltDescribeDifference(vector2, vector4)
