\name{nba.heights}
\alias{nba.heights}
\docType{data}
\title{NBA Player heights from 2008-9}
\description{Heights of all NBA players from the 2008-9 season.}
\usage{data("nba.heights")}
\format{
  A data frame with 435 observations (players) on the following 4 variables.
  \describe{
    \item{\code{last.name}}{Last name.}
    \item{\code{first.name}}{First name.}
    \item{\code{h.meters}}{Height, in meters.}
    \item{\code{h.in}}{Height, in inches.}
  }
}
\source{
  Collected from \url{http://www.nba.com}.
}
\examples{
data(nba.heights)
qqnorm(nba.heights$h.meters)
}
\keyword{datasets}
