\name{credits}
\alias{credits}
\docType{data}
\title{
College credits.
}
\description{
A simulated data set of number of credits taken by college students each semester.
}
\usage{data(credits)}
\format{
  A data frame with 100 observations on the following variable.
  \describe{
    \item{\code{credits}}{Number of credits.}
  }
}
\source{
Simulated data.
}
\examples{
data(credits)
histPlot(credits$credits)
}
\keyword{datasets, college credits, inference on means}
