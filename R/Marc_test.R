# just a test R script from Marc
data(iris)
head(iris)
library(ggplot2)
p <- ggplot(iris, aes(Petal.Length,Petal.Width))
p + geom_point()
