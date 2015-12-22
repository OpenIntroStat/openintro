\name{stent30}
\alias{stent30}
\docType{data}
\title{Stents for the treatment of stroke}
\description{An experiment that studies effectiveness of stents in treating patients at risk of stroke with some unexpected results. These data represent the results 30 days after stroke.}
\usage{data("stent30")}
\format{
  A data frame with 451 observations on the following 2 variables.
  \describe{
    \item{\code{group}}{a factor with levels \code{control} \code{treatment}}
    \item{\code{outcome}}{a factor with levels \code{no event} \code{stroke}}
  }
}
\source{Chimowitz MI, Lynn MJ, Derdeyn CP, et al. 2011. Stenting versus Aggressive Med- ical Therapy for Intracranial Arterial Stenosis. New England Journal of Medicine 365:993- 1003. www.nejm.org/doi/full/10.1056/NEJMoa1105335. NY Times article reporting on the study: www.nytimes.com/2011/09/08/health/research/08stent.html.}
\examples{
data(stent30)
## maybe str(stent30) ; plot(stent30) ...
}
\keyword{datasets}