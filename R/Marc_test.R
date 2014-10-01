# just a test R script from Marc
data(iris)
head(iris)
library(ggplot2)
p <- ggplot(iris, aes(Sepal.Length, Sepal.Width))
p + geom_point()
