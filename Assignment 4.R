#Assignment 4
install.packages("ggrepel")
library(tidyverse)
library(scales)
library(ggrepel)
library(ggplot2)
Movies <- read_csv("Top_10000_Popular_Movies.csv")
str(Movies)
Movies$year <- format(as.Date(Movies$release_date), format = "%Y")
Movies <- Movies[which(Movies$year>="2020" &
                         Movies$year<="2021"),]

p <- ggplot(data = Movies, 
            mapping= aes(x= release_date, y = popularity))
p + geom_point()

p + geom_point() +
  geom_text_repel(data = subset(Movies, popularity > 500,
                                max.overlaps = Inf),
                  mapping = aes(label = original_title)) +
  labs(x = "Release Date",
       y = "Popularity Score",
       title = "Top 10,000 Most Popular Movies") + 
  scale_y_continuous(labels = scientific)



