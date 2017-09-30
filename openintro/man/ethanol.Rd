\name{ethanol}
\alias{ethanol}
\docType{data}
\title{Ethanol Treatment for Tumors Experiment}
\description{
  Experiment where 3 different treatments of ethanol were tested on the treatment of oral cancer tumors in hamsters.
}
\usage{data("ethanol")}
\format{
  A data frame with 24 observations, each representing one hamster, on the following 2 variables.
  \describe{
    \item{\code{treatment}}{Treatment the hamster received.}
    \item{\code{regress}}{a factor with levels \code{no} \code{yes}}
  }
}
\details{
  The \code{ethyl_cellulose} and \code{pure_ethanol} treatments consisted of about a quarter of the volume of the tumors, while the \code{pure_ethanol_16x} treatment was 16x that, so about 4 times the size of the tumors.
}
\source{
  Morhard R, et al. 2017. Development of enhanced ethanol ablation as an alternative to surgery in treatment of superficial solid tumors. Scientific Reports 7:8750.
}
\examples{
data(ethanol)
table(ethanol)
fisher.test(table(ethanol))
}
\keyword{datasets}
