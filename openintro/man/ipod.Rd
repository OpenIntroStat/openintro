\name{ipod}
\alias{ipod}
\docType{data}
\title{
Length of songs on an iPod
}
\description{
A simulated data set on lengths of songs on an iPod.
}
\usage{data(ipod)}
\format{
  A data frame with 3000 observations on the following variable.
  \describe{
    \item{\code{songLength}}{Length of song (in minutes).}
  }
}
\source{
Simulated data.
}
\examples{
data(ipod)
histPlot(ipod$songLength)
}
\keyword{datasets, iPod, inference on means}
