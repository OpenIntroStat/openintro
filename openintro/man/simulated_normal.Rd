\name{simulated_normal}
\alias{simulated_normal}
\docType{data}
\title{
  Simulated data sets, drawn from a normal distribution.
}
\description{
  Data were simulated using \code{\link{rnorm}}.
}
\usage{data("simulated_normal")}
\format{
  The format is:
List of 3
 $ n40 : 40 observations from a standard normal distribution.
 $ n100: 100 observations from a standard normal distribution.
 $ n400: 400 observations from a standard normal distribution.
}
\examples{
data(simulated_normal)
par(mfrow = c(1, 3))
lapply(simulated_normal, qqnorm)
}
\keyword{datasets}
