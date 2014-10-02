# just a test R script from Marc
data(iris)
head(iris)
library(ggplot2)
<<<<<<< HEAD
p <- ggplot(iris, aes(Sepal.Length, Sepal.Width))
=======
p <- ggplot(iris, aes(Species, Sepal.Width))
>>>>>>> marc
p + geom_point()
