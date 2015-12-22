\name{assortive.mating}
\alias{assortive.mating}
\docType{data}
\title{Eye color of couples}
\description{Colors of the eye colors of male and female partners.}
\usage{data("assortive.mating")}
\format{
  A data frame with 204 observations on the following 2 variables.
  \describe{
    \item{\code{self_male}}{a factor with levels \code{blue} \code{brown} \code{green}}
    \item{\code{partner_female}}{a factor with levels \code{blue} \code{brown} \code{green}}
  }
}
\source{B. Laeng et al. Why do blue-eyed men prefer women with the same eye color? In: Behavioral Ecology and Sociobiology 61.3 (2007), pp. 371-384.}
\examples{
data(assortive.mating)
table(assortive.mating)
}
\keyword{datasets}
