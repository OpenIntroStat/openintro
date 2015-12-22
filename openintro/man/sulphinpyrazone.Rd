\name{sulphinpyrazone}
\alias{sulphinpyrazone}
\docType{data}
\title{Treating heart attacks}
\description{Experiment data for studying the efficacy of treating patients who have had a heart attack with Sulphinpyrazone.}
\usage{data("sulphinpyrazone")}
\format{
  A data frame with 1475 observations on the following 2 variables.
  \describe{
    \item{\code{group}}{a factor with levels \code{control} \code{treatment}}
    \item{\code{outcome}}{a factor with levels \code{died} \code{lived}}
  }
}
\source{Anturane Reinfarction Trial Research Group. 1980. Sulfinpyrazone in the prevention of sudden death after myocardial infarction. New England Journal of Medicine 302(5):250-256.}
\examples{
data(sulphinpyrazone)
## maybe str(sulphinpyrazone) ; plot(sulphinpyrazone) ...
}
\keyword{datasets}