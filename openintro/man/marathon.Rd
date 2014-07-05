\name{marathon}
\alias{marathon}
\docType{data}
\title{
New York City Marathon Times
}
\description{
Marathon times of male and female winners of the New York City Marathon 1970-1999.
}
\usage{data(marathon)}
\format{
  A data frame with 60 observations on the following 3 variables.
  \describe{
    \item{\code{Year}}{Year}
    \item{\code{Gender}}{Gender}
    \item{\code{Time}}{Running time (in hours)}
  }
}
\source{
\url{http://www.webcitation.org/5kx7ilFLp}
}
\examples{
data(marathon)
str(marathon)
histPlot(marathon$Time)
boxPlot(marathon$Time, horiz = TRUE, fact = marathon$Gender)
}
\keyword{datasets}
