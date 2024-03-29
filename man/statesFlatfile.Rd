% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/micromap-package.R
\docType{data}
\name{statesFlatfile}
\alias{statesFlatfile}
\title{Example Dataset: A Table of State Polygons}
\format{
A data frame with 434 rows and the following 4 columns: \describe{
\item{ID}{abbreviation or state name.} \item{coordsx}{x coordinates for each
polygon vertice.} \item{coordsy}{y coordinates for each polygon vertice.}
\item{poly}{individual polygon identifier within each state.} }
}
\description{
Polygon vertices for each state.
}
\note{
This is just an example data set.
}
\examples{

data(statesFlatfile)
head(statesFlatfile)

}
\keyword{datasets}
