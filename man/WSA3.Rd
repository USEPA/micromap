\name{WSA3}
\alias{WSA3}
\docType{data}
\title{Example Dataset: Major U.S. EcoRegions}
\description{
  An object of class 'SpatialPolygonsDataFrame' that was created from a
	shapefile  of the U.S. level 3 ecoregion boundaries. 
}
\usage{data(WSA3)}
\format{
  The format is:
Formal class 'SpatialPointsDataFrame' [package "sp"]. 
}
\note{
  This is just an example data set.
}
\examples{
data(WSA3)
spplot(WSA3, zcol="WSA_3_NM", col.regions=rainbow(3, s=0.75))
}
\keyword{datasets}


