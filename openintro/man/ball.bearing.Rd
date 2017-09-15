\name{ball.bearing}
\alias{ball.bearing}
\alias{ball_bearing}
\alias{ballBearing}
\docType{data}
\title{
Lifespan of ball bearings
}
\description{
A simulated data set on lifespan of ball bearings.
}
\usage{data(ball.bearing)}
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
data(ball.bearing)
par(mfrow=c(1,2))
histPlot(ball.bearing$lifeSpan, col='#22558833')
qqnorm(ball.bearing$lifeSpan)
}
\keyword{datasets, ball bearings, inference on means}
