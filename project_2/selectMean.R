#EES1137 Assignment 2
#Question 2
#SelectMean.R script to be used in GitBash

#Create a numeric vector
x <- c(-10,-3,2,0,4,5,0.3,-0.1,2.1,3.2,0,-12.1,-1.2)

#Source myFuncs.R from Question 1
#to call harmonicMean and posMean functions
source("myFuncs.R") 
	
#Create args to select either 0 or 1
args <- commandArgs(trailingOnly = T)
	if(args==0)	{

	#cat posMean if arg entered is 0
	cat("The positive mean of the data is", posMean(x), "\n")
 
	#If arg entered is 1,then cat harmonicMean 
}	else if(args==1)	{
	cat("The harmonic mean of the data is", harmonicMean(x), "\n")

	#If any arg other than 0, or 1 is called,
	#inform user that it is an invalid arg
	#and that they must use 0 or 1
} 	else {
	cat("Invalid argument: Must use 0 or 1")
}

