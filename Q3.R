
library(ggplot2)


titanic <- read.csv("titanic.csv")


final_Plot <- ggplot(titanic, aes(x = Age, fill = factor(Survived))) +
  geom_histogram(binwidth = 5, color = "black", alpha = 0.8) +
  labs(x = "Age", y = "Count", title = "Histogram of Passenger Age by Survival", fill = "Survived") +
  scale_fill_manual(values = c("red", "blue")) +
  theme_minimal()


final_Plot

