\name{OrEcoLevel3}
\alias{OrEcoLevel3}
\docType{data}
\title{Example Dataset: Oregon Level 3 Ecoregion Shapefile}
\description{
	An object of class 'SpatialPolygonsDataFrame' that was created from a
	shapefile detailing boundaries of the level 3 ecoregion borders of Oregon.
}
\usage{data(OrEcoLevel3)}
\format{
  The format is:
Formal class 'SpatialPointsDataFrame' [package "sp"]. 
}
\note{
  This is just an example data set.
}
\examples{
data(OrEcoLevel3)
spplot(OrEcoLevel3, zcol="US_L3NAME", col.regions=rainbow(9, s=0.75))
}
\keyword{datasets}


