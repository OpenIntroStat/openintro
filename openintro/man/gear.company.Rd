\name{gear.company}
\alias{gear.company}
\docType{data}
\title{Fake data for a gear company example}
\description{Made-up data for whether a sample of two gear companies' parts pass inspection.}
\usage{data("gear.company")}
\format{
  A data frame with 2000 observations on the following 2 variables.
  \describe{
    \item{\code{company}}{a factor with levels \code{current} \code{prospective}}
    \item{\code{outcome}}{a factor with levels \code{not} \code{pass}}
  }
}
\examples{
data(gear.company)
## maybe str(gear.company) ; plot(gear.company) ...
}
\keyword{datasets}
