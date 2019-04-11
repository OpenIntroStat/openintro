\name{drone_blades}
\alias{drone_blades}
\docType{data}
\title{
  Quadcopter Drone Blades
}
\description{
  Quality control data set for quadcopter drone blades,
  where this data has been made up for an example.
}
\usage{data("drone_blades")}
\format{
  A data frame with 2000 observations on the following 2 variables.
  \describe{
    \item{\code{supplier}}{The supplier for the blade.}
    \item{\code{inspection}}{The inspection conclusion.}
  }
}
\references{
  OpenIntro Statistics, Third Edition and Fourth Edition.
}
\examples{
data(drone_blades)
table(drone_blades)
}
\keyword{datasets}
