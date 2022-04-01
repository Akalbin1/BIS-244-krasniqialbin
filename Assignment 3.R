install.packages("here")
library(here)
here("data", "PRESIDENT_precinct_general.csv")
library(here)
read.csv(here("PRESIDENT_precinct_general.csv"))
# Simple Scatterplot
attach(PRESIDENT_precinct_general)
plot(state_po, votes, main="Scatterplot", 
     xlab="state_po ", ylab="votes ", pch=40)

