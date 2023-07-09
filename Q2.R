

library(ggplot2)


data(txhousing)


str(txhousing)


summary(txhousing)


head(txhousing)


missing_values <- sum(!complete.cases(txhousing))
cat("Number of missing values:", missing_values, "\n")


ggplot(txhousing, aes(x = year, y = median)) +
  geom_point() +
  labs(x = "Year", y = "Median Price", title = "Scatterplot of Median Price vs. Year") +
  theme_minimal()


ggplot(txhousing, aes(x = median)) +
  geom_histogram(binwidth = 50000, fill = "steelblue", color = "white") +
  labs(x = "Median Price", y = "Frequency", title = "Histogram of Median Prices") +
  theme_minimal()

