\name{coast.starlight}
\alias{coast.starlight}
\alias{coast_starlight}
\docType{data}
\title{
  Coast Starlight Amtrak train
}
\description{
  Travel times and distances.
}
\usage{data("coast.starlight")}
\format{
  A data frame with 16 observations on the following 3 variables.
  \describe{
    \item{\code{station}}{Station.}
    \item{\code{dist}}{Distance.}
    \item{\code{travel_time}}{Travel time.}
  }
}
\examples{
data(coast.starlight)
plot(coast.starlight$dist, coast.starlight$travel_time)
}
\keyword{datasets}
