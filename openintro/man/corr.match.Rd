\name{corr.match}
\alias{corr.match}
\docType{data}
\title{Sample data sets for correlation problems}
\description{Simulated data.}
\usage{data("corr.match")}
\format{
  A data frame with 121 observations on the following 9 variables.
  \describe{
    \item{\code{x}}{a numeric vector}
    \item{\code{y1}}{a numeric vector}
    \item{\code{y2}}{a numeric vector}
    \item{\code{y3}}{a numeric vector}
    \item{\code{y4}}{a numeric vector}
    \item{\code{y5}}{a numeric vector}
    \item{\code{y6}}{a numeric vector}
    \item{\code{y7}}{a numeric vector}
    \item{\code{y8}}{a numeric vector}
  }
}
\source{Simulated data set.}
\examples{
data(corr.match)
plot(corr.match$x, corr.match$y1)
cor(corr.match$x, corr.match$y1)
}
\keyword{datasets}
