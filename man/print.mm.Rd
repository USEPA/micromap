\name{print.mm}
\alias{print.mm}
\title{
  Print lmplot Object to a File
}
\description{
  Takes a stored lmplot object of class mm and prints to a file whose type is
  implied by the file name.
}
\usage{
\method{print}{mm}(x, name, res, ...)
}
\arguments{
  \item{x}{
  name of the lmplot object.
  }
  \item{name}{
  name of the file to be produced. tiff, png, jpeg, and pdf are recognized.
  }
  \item{res}{
  resolution in dpi.
  }
  \item{...}{
    Additional arguments.  (Currently ignored.)
  }
}
\value{
  Returns nothing.
}
\author{
  Quinn Payton \email{Payton.Quinn@epa.gov}
}
