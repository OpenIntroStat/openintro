\name{ccHousing}
\alias{ccHousing}
\docType{data}
\title{ Community college housing (simulated data) }
\description{ These are simulated data and intended to represent housing prices of students at a community college. }
\usage{data(ccHousing)}
\format{
  A data frame with 75 observations on the following variable.
  \describe{
    \item{\code{price}}{ Monthly housing price, simulated. }
  }
}
\references{ OpenIntro Statistics, \href{http://www.openintro.org/stat/textbook.php}{openintro.org} }
\examples{
data(ccHousing)
hist(ccHousing$price)
}
\keyword{datasets}
