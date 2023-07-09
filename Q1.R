
library(ggplot2)


data(iris)


ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  labs(x = "Sepal Length", y = "Petal Length", title = "Scatterplot of Sepal Length and Petal Length") +
  theme_minimal()

