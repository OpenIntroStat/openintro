\name{census}
\alias{census}
\docType{data}
\title{
Random sample of 2000 U.S. Census Data
}
\description{
A random sample of 500 observations from the 2000 U.S. Census Data.
}
\usage{data(census)}
\format{
  A data frame with 500 observations on the following 8 variables.
  \describe{
    \item{\code{censusYear}}{Census Year.}
    \item{\code{stateFIPScode}}{Name of state.}
    \item{\code{totalFamilyIncome}}{Total family income (in U.S. dollars).}
    \item{\code{age}}{Age.}
    \item{\code{sex}}{Sex with levels \code{Female} and \code{Male}.}
    \item{\code{raceGeneral}}{Race with levels \code{American Indian or Alaska Native}, \code{Black}, \code{Chinese}, \code{Japanese}, \code{Other Asian or Pacific Islander}, \code{Two major races}, \code{White} and \code{Other}.}
    \item{\code{maritalStatus}}{Marital status with levels \code{Divorced}, \code{Married/spouse absent}, \code{Married/spouse present}, \code{Never married/single}, \code{Separated} and \code{Widowed}.}
    \item{\code{totalPersonalIncome}}{Total personal income (in U.S. dollars).}
  }
}
\source{
\url{http://factfinder.census.gov/}
}
\examples{
data(census)
str(census)
these <- census[,3] > 0     # income greater than 0
histPlot(log(census$totalFamilyIncome[these]), xlab="log(total family income)")
}
\keyword{datasets}
