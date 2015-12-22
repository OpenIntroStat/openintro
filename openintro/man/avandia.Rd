\name{avandia}
\alias{avandia}
\docType{data}
\title{Cardiovascular problems for two types of Diabetes medicines}
\description{A comparison of cardiovascular problems for Rosiglitazone and Pioglitazone.}
\usage{data("avandia")}
\format{
  A data frame with 227571 observations on the following 2 variables.
  \describe{
    \item{\code{treatment}}{a factor with levels \code{Pioglitazone} \code{Rosiglitazone}}
    \item{\code{cardiovascular_problems}}{a factor with levels \code{no} \code{yes}}
  }
}
\source{D.J. Graham et al. Risk of acute myocardial infarction, stroke, heart failure, and death in elderly Medicare patients treated with rosiglitazone or pioglitazone. In: JAMA 304.4 (2010), p. 411. issn: 0098-7484.}
\examples{
data(avandia)
table(avandia)
}
\keyword{datasets}
