\name{cpr}
\alias{cpr}
\docType{data}
\title{CPR data set}
\description{These patients were randomly divided into a treatment group where they received a blood thinner or the control group where they did not receive a blood thinner. The outcome variable of interest was whether the patients survived for at least 24 hours.}
\usage{data("cpr")}
\format{
  A data frame with 90 observations on the following 2 variables.
  \describe{
    \item{\code{group}}{a factor with levels \code{control} \code{treatment}}
    \item{\code{outcome}}{a factor with levels \code{died} \code{survived}}
  }
}
\source{Efficacy and safety of thrombolytic therapy after initially unsuccessful cardiopulmonary resuscitation: a prospective clinical trial, by Bottiger et al., The Lancet, 2001.}
\examples{
data(cpr)
table(cpr)
}
\keyword{datasets}
