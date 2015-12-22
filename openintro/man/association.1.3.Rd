\name{association.1.3}
\alias{association.1.3}
\docType{data}
\title{Simulated data for association plots, set 1}
\description{Simulated data set.}
\usage{data("association.1.3")}
\format{
  A data frame with 121 observations on the following 4 variables.
  \describe{
    \item{\code{x1}}{a numeric vector}
    \item{\code{y1}}{a numeric vector}
    \item{\code{y2}}{a numeric vector}
    \item{\code{y3}}{a numeric vector}
  }
}
\examples{
data(association.1.3)
plot(association.1.3$x1, association.1.3$y1)
}
\keyword{datasets}
