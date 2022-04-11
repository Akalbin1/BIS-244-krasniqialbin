install.packages("here")
library(here)
here("data", "PRESIDENT_precinct_general.csv")

# TAA - There is no Data subfolder in your repo, and you were supposed to read the zip file
# using read_csv
library(here)
read.csv(here("Data/PRESIDENT_precinct_general.csv"))
# TAA - This isn't how here() works.

# Simple Scatterplot
attach(PRESIDENT_precinct_general)

# TAA - This can't possibly work
plot(state_po, votes, main="Scatterplot", 
     xlab="state_po ", ylab="votes ", pch=40)

