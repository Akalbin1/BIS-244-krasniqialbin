library(readr)
data1 <- read.csv("statepop")
View(data1)
data1$VALUE <- as.numeric(data1$VALUE)
sapply(data1, class)

install.packages("tidyverse")
library(tidyverse)
by(data1$VALUE, data1[Population], sum)
install.packages("ggplot")
ggplot(data=data1)+
  geom_point(aes(x=state, y=populatiom)) +
  ggtitle("Population by US State")+
  xlab("state") +
  ylab("Population") +
  theme_minimal()


