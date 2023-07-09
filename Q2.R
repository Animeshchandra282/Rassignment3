
install.packages("ggplot2movies")
library(ggplot2)


data(txhousing)


str(txhousing)


summary(txhousing)

# Check the first few rows of the dataset
head(txhousing)


missing_values <- sum(!complete.cases(txhousing))
cat("Number of missing values:", missing_values, "\n")


ggplot(txhousing, aes(x = year, y = price)) +
  geom_point() +
  labs(x = "Year", y = "Price", title = "Scatterplot of Price vs. Year") +
  theme_minimal()


ggplot(txhousing, aes(x = price)) +
  geom_histogram(binwidth = 10000, fill = "steelblue", color = "white") +
  labs(x = "Price", y = "Frequency", title = "Histogram of Prices") +
  theme_minimal()
