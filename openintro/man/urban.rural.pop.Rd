\name{urban.rural.pop}
\alias{urban.rural.pop}
\docType{data}
\title{State summary info}
\description{Census info for the 50 US states plus DC.}
\usage{data("urban.rural.pop")}
\format{
  A data frame with 51 observations on the following 5 variables.
  \describe{
    \item{\code{State}}{US state.}
    \item{\code{UrbanIn}}{a numeric vector}
    \item{\code{UrbanOut}}{a numeric vector}
    \item{\code{RuralFarm}}{a numeric vector}
    \item{\code{RuralNonfarm}}{a numeric vector}
  }
}
\source{US census.}
\examples{
data(urban.rural.pop)
## maybe str(urban.rural.pop) ; plot(urban.rural.pop) ...
}
\keyword{datasets}