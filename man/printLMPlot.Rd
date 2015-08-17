\name{printLMPlot}
\alias{printLMPlot}
\title{
  Print lmplot Object to a File
}
\description{
  Takes a stored lmplot object and uses the print method for objects of class mm
  to print to a file whose type is implied by the file name.
}
\usage{
printLMPlot(plobject, name, res)
}
\arguments{
  \item{plobject}{
  name of the lmplot object.
  }
  \item{name}{
  name of the file to be produced. Tiff, png, jpeg, and pdf are recognized.
  }
  \item{res}{
  resolution in dpi.
  }
}
\value{
  Returns nothing.
}
\author{
  Quinn Payton \email{Payton.Quinn@epa.gov}
}
