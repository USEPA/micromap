\name{lungMort}
\alias{lungMort}
\docType{data}
\title{Example Dataset: Lung Cancer Mortality}
\description{
 Lung mortality rates for all 50 states and Washington D.C. 
}
\usage{data(lungMort)}
\format{
  A data frame with 51 rows and the following 14 columns:
  \describe{
    \item{StateAb}{abbreviation of state name.}
    \item{Rate_95}{mortality rate estimate for 1995.}
    \item{Count_95}{estimated number of cases in 1995.}
    \item{Lower_95}{lower bound of a 95 percent confidence interval for 1995 mortality rate.}
    \item{Upper_95}{lower bound of a 95 percent confidence interval for 1995 mortality rate.}
    \item{Pop_95}{population in 1995.}
    \item{StdErr_95}{estimated stadard error of the estimated mortality rate in 2000.}
    \item{Rate_00}{mortality rate estimate for 2000.}
    \item{Count_00}{estimated number of cases in 2000.}
    \item{Lower_00}{lower bound of a 95 percent confidence interval for 2000 mortality rate.}
    \item{Upper_00}{lower bound of a 95 percent confidence interval for 2000 mortality rate.}
    \item{Pop_00}{population in 2000.}
    \item{StdErr_00}{estimated stadard error of the estimated mortality rate in 2000.}
    \item{State}{full state name.}
  }
}
\note{
  This is just an example data set.
}
\examples{
data(lungMort)
head(lungMort)
}
\keyword{datasets}
