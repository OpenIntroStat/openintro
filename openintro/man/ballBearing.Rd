\name{ballBearing}
\alias{ballBearing}
\docType{data}
\title{
Lifespan of ball bearings
}
\description{
A simulated data set on lifespan of ball bearings.
}
\usage{data(ballBearing)}
\format{
  A data frame with 75 observations on the following variable.
  \describe{
    \item{\code{lifeSpan}}{Lifespan of ball bearings (in hours).}
  }
}
\source{
Simulated data.
}
\examples{
data(ballBearing)
par(mfrow=c(1,2))
histPlot(ballBearing$lifeSpan, col='#22558833')
qqnorm(ballBearing$lifeSpan)
}
\keyword{datasets, ball bearings, inference on means}
