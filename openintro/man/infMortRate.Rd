\name{infMortRate}
\alias{infMortRate}
\docType{data}
\title{
Infant Mortality Rates, 2012
}
\description{
This entry gives the number of deaths of infants under one year old in 2012 per 1,000 live births in the same year. This rate is often used as an indicator of the level of health in a country.
}
\usage{data(infMortRate)}
\format{
  A data frame with 222 observations on the following 2 variables.
  \describe{
    \item{\code{country}}{Name of country.}
    \item{\code{infMortRate}}{Infant mortality rate per 1,000 live births.}
  }
}
\details{
The data is given in decreasing order of infant mortality rates. There are a few potential outliers.
}
\source{
CIA World Factbook, \url{https://www.cia.gov/library/publications/the-world-factbook/rankorder/rawdata_2091.txt}.
}
\examples{
data(infMortRate)
histPlot(infMortRate$infMortRate)
boxPlot(infMortRate$infMortRate)
}
\keyword{datasets, histogram, distribution}
