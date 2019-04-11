\name{simulated_scatter}
\alias{simulated_scatter}
\docType{data}
\title{
  Simulated data for sample scatterplots
}
\description{
  Fake data.
}
\usage{data("simulated_scatter")}
\format{
  A data frame with 500 observations on the following 3 variables.
  \describe{
    \item{\code{group}}{Group, representing data for a specific plot.}
    \item{\code{x}}{x-value.}
    \item{\code{y}}{y-value.}
  }
}
\examples{
data(simulated_scatter)
these <- simulated_scatter$group == 1
plot(simulated_scatter$x[these], simulated_scatter$y[these])
}
\keyword{datasets}
