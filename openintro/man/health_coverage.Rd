\name{health_coverage}
\alias{health_coverage}
\docType{data}
\title{Health Coverage and Health Status}
\description{Survey responses for 20,000 responses to the Behavioral Risk Factor Surveillance System.}
\usage{data("health_coverage")}
\format{
  A data frame with 20000 observations on the following 2 variables.
  \describe{
    \item{\code{coverage}}{Whether the person had health coverage or not.}
    \item{\code{health_status}}{The person's health status.}
  }
}
\source{
  Office of Surveillance, Epidemiology, and Laboratory Services Behavioral Risk Factor Surveillance System, BRFSS 2010 Survey Data.
}
\examples{
data(health_coverage)
table(health_coverage)
}
\keyword{datasets}
