\name{toy.anova}
\alias{toy.anova}
\docType{data}
\title{Simulated data set for ANOVA}
\description{Simulated data set for getting a better understanding of intuition that ANOVA is based off of.}
\usage{data("toy.anova")}
\format{
  A data frame with 70 observations on the following 3 variables.
  \describe{
    \item{\code{groups}}{a factor with levels \code{I} \code{II} \code{III}}
    \item{\code{x1}}{a numeric vector}
    \item{\code{x2}}{a numeric vector}
  }
}
\examples{
data(toy.anova)
## maybe str(toy.anova) ; plot(toy.anova) ...
}
\keyword{datasets}