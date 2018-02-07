# Question no 1
# myFuncs.R

# harmonicMean function
# harmonicMean takes the 1 argument,
# a vector of numeric values.

harmonicMean <- function(x) {
  if (0 %in% x == T) {
   X <- X[X! = 0]
}
 n <- lenght(x)
 harmonicMean <- n/sum (1/x)

	return (harmonicMean)
}


#1b
# posMean function
# Arithmetic mean of a vector of numeric values
# harmonicMean

# a harmonicMean which takes 1 argument x, 
# a vector of numeric values.

posMean <- func(x) {
	if (any (x > 0)) {
	x <- (x + abs(x))/2
}
if (0 %in% x == T) {
	x <- x[x! = 0]get
	}
	n <- length(x)
  harmonicMean <- n/sum(i/x)
 return (harmonicMean)
}	