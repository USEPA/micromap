\name{assimilatePlot}
\alias{assimilatePlot}
\title{
  Cleans a User Made Panel
}
\description{
  Sends a user made panel out to the graph "cleaning functions" in lmplot in
  order to properly display a user made panel seemlessly into the rest of an
  lmplot.
}
\usage{
assimilatePlot(pl, i, a, limsx=NA, limsy=NA)
}
\arguments{
  \item{pl}{  the lmplot object.}
  \item{i}{  the panel number.}
  \item{a}{   the attribute list.}
  \item{limsx}{limits of the x axis if desired.}
  \item{limsy}{limits of the y axis if desired.}
}
\value{
  Returns a cleaned plot object.
}
\note{
  See the Introduction Guide for a full list of the options available for
  altering micromaps.
}
\author{
  Quinn Payton \email{Payton.Quinn@epa.gov}
}
