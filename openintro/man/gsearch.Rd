\name{gsearch}
\alias{gsearch}
\docType{data}
\title{Simulated Google search experiment}
\description{The data were simulated to look like sample results from a Google search experiment.}
\usage{data("gsearch")}
\format{
  A data frame with 10000 observations on the following 2 variables.
  \describe{
    \item{\code{type}}{a factor with levels \code{new search} \code{no new search}}
    \item{\code{outcome}}{a factor with levels \code{current} \code{test 1} \code{test 2}}
  }
}
\examples{
data(gsearch)
## maybe str(gsearch) ; plot(gsearch) ...
}
\keyword{datasets}
