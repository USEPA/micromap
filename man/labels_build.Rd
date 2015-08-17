\name{labels_build}	
\alias{labels_build}	
\alias{bar_build}
\alias{bar_cl_build}
\alias{box_summary_build}
\alias{dot_build}
\alias{dot_cl_build}
\alias{ranks_build}
\title{
  Builds panels
}
\description{
  Creates a panel of the user specified type using the attribute list to make
  adjustments.
}
\usage{
labels_build(pl, p, DF, att)
}
\arguments{
  \item{pl}{
  the lmplot object being constructed.
  }
  \item{p}{
  number of the panel within the plot.
  }
  \item{DF}{
  the data table of statistics to be referenced.
  }
  \item{att}{
  the attribute list to specify visual and graphical characteristics.
  }
}

\value{
  Returns a ggplot object to be printed later in the lmplot function.
}
\author{
  Quinn Payton \email{Payton.Quinn@epa.gov}
}
