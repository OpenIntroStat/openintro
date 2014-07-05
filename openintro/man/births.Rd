\name{births}
\alias{births}
\docType{data}
\title{ North Carolina births }
\description{ Data on a random sample of 100 births for babies in North Carolina where the mother was not a smoker and another 50 where the mother was a smoker. }
\usage{data(births)}
\format{
  A data frame with 150 observations on the following 14 variables.
  \describe{
    \item{\code{fAge}}{Father's age.}
    \item{\code{mAge}}{Mother's age.}
    \item{\code{weeks}}{Weeks at which the mother gave birth.}
    \item{\code{premature}}{Indicates whether the baby was premature or not.}
    \item{\code{visits}}{Number of hospital visits.}
    \item{\code{gained}}{Weight gained by mother.}
    \item{\code{weight}}{Birth weight of the baby.}
    \item{\code{sexBaby}}{Gender of the baby.}
    \item{\code{smoke}}{Whether or not the mother was a smoker.}
  }
}
\source{ These birth records were }
\references{ Birth records released by North Carolina in 2004. }
\examples{
data(births)
boxPlot(births$weight, births$smoke)
}
\keyword{datasets}
