\name{cats}
\alias{cats}
\docType{data}
\title{Summary of 144 cats}
\description{Three variables.}
\usage{data("cats")}
\format{
  A data frame with 144 observations on the following 3 variables.
  \describe{
    \item{\code{Sex}}{a factor with levels \code{F} \code{M}}
    \item{\code{Bwt}}{a numeric vector}
    \item{\code{Hwt}}{a numeric vector}
  }
}
\source{W. N. Venables and B. D. Ripley. Modern Applied Statistics with S. Fourth Edition. \url{http://www.stats.ox.ac.uk/pub/MASS4}. New York: Springer, 2002.}
\examples{
data(cats)
hist(cats$Bwt)
}
\keyword{datasets}
