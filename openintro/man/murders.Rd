\name{murders}
\alias{murders}
\docType{data}
\title{
  Data for 20 metropolitan areas.
}
\description{
  Population, percent in poverty, percent unemployment, and murder rate.
}
\usage{data("murders")}
\format{
  A data frame with 20 metropolitan areas on the following 4 variables.
  \describe{
    \item{\code{population}}{Population.}
    \item{\code{perc_pov}}{Percent in poverty.}
    \item{\code{perc_unemp}}{Percent unemployed.}
    \item{\code{annual_murders_per_mil}}{Number of murders per year per million people.}
  }
}
\examples{
data(murders)
plot(murders$perc_pov, murders$annual_murders_per_mil)
}
\keyword{datasets}
