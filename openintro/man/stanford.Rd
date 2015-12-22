\name{stanford}
\alias{stanford}
\docType{data}
\title{Stanford heart transplant experiment}
\description{The Stanford University Heart Transplant Study was conducted to determine whether an experimental heart transplant program increased lifespan. Each patient entering the program was designated an official heart transplant candidate, meaning that he was gravely ill and would most likely benefit from a new heart. Some patients got a transplant and some did not.}
\usage{data("stanford")}
\format{
  A data frame with 103 observations on the following 2 variables.
  \describe{
    \item{\code{outcome}}{a factor with levels \code{alive} \code{dead}}
    \item{\code{group}}{a factor with levels \code{control} \code{treatment}}
  }
}
\source{B. Turnbull et al. Survivorship of Heart Transplant Data. In: Journal of the American Statistical Association 69 (1974), pp. 74-80.}
\examples{
data(stanford)
## maybe str(stanford) ; plot(stanford) ...
}
\keyword{datasets}