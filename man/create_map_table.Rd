\name{create_map_table}
\alias{create_map_table}
\title{
  Prepares A Polygon Table
}
\description{
	Takes the user supplied polygon table and prepares it to be plotted correctly
	with the lmplot function.
}
\usage{
create_map_table(tmp.map, IDcolumn=NA, poly.thresh=.0001)
}
\arguments{
  \item{tmp.map}{a shapefile to be parsed into a flat table for use with
    ggplot2.}
  \item{IDcolumn}{specify which column in the data file to use as a unique
    identifier.}
  \item{poly.thresh}{specify the minimum polygon area which to keep. All
    polygons with less area will be dropped.}
}
\value{
  A flat table of all the polygons in the shapefile with an entry for each
  vertice.
}
\author{
  Quinn Payton \email{Payton.Quinn@epa.gov}
}
\examples{
data("USstates")
head(USstates@data)
statePolys <- create_map_table(USstates, IDcolumn="ST")
head(statePolys)
}
