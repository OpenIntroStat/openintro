% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-ball_bearing.R
\docType{data}
\name{ball_bearing}
\alias{ball_bearing}
\alias{ball.bearing}
\alias{ballBearing}
\title{Lifespan of ball bearings}
\format{
A data frame with 75 observations on the following variable.
\describe{
\item{life_span}{Lifespan of ball bearings (in hours).}
}
}
\source{
Simulated data.
}
\usage{
ball_bearing
}
\description{
A simulated dataset on lifespan of ball bearings.
}
\examples{

library(ggplot2)

ggplot(ball_bearing, aes(x = life_span)) +
  geom_histogram(binwidth = 1)

qqnorm(ball_bearing$life_span)
}
\keyword{datasets}
