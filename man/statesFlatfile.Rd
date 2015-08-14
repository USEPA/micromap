\name{statesFlatfile}
\alias{statesFlatfile}
\docType{data}
\title{Example Dataset: A Table of State Polygons}
\description{
	Polygon vertices for each state.
}
\usage{data(statesFlatfile)}
\format{
  A data frame with 434 rows and the following 4 columns:
  \describe{
    \item{ID}{abbreviation or state name.}
    \item{coordsx}{x coordinates for each polygon vertice.}
    \item{coordsy}{y coordinates for each polygon vertice.}
    \item{poly}{individual polygon identifier within each state.}
  }
}
\note{
  This is just an example data set.
}
\examples{
data(statesFlatfile)
head(statesFlatfile)
}
\keyword{datasets}


