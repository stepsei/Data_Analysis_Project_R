library(plyr)

# Assignment 3
# Question 2
# An R script: processTPS.R
# set working directory - the directory containing csv file
setwd("/Users/user/Documents/Assignment3")

#2a
args <- commandArgs(trailingOnly = T)
filename <- args[1]
data <- read.csv(file = filename, header = TRUE)

#2c  
num_incidence <- function()
{
  cat("Processing data from file:" ,filename, "\n")
  mytest <- count(data, "Incident_Type")
  cat("Total number of incident per incident type:", "\n")
  print(mytest)
}

#2d  
avg_num_units <- function()
{
  newdata <- subset(data, data$Priority_Number > 5)
  avg_num_units <- mean(newdata$Units_Arrived_At_Scene, na.rm = TRUE)
  cat("Average number of units dispatched for Priority > 5:" ,avg_num_units, "\n")

}

num_incidence()
avg_num_units()

large_num_incidence <- function(x, n) {
  df <- data
  x <- data$Forward_Sortation_Area
  tail(sort(table(unlist(strsplit(as.character(x), ", ")))), n)
}

cat("Postal code/s with the largest number of incidents:" , "\n")
large_num_incidence(x,1)