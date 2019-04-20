\name{penelope}
\alias{penelope}
\docType{data}
\title{Guesses at the weight of Penelope (a cow)}
\description{
  The data was collected by the Planet Money podcast to test
  a theory about crowd-sourcing.
  Penelope's actual weight was 1,355 pounds.
}
\usage{data("penelope")}
\format{
  A data frame with 17184 observations on the following variable.
  \describe{
    \item{\code{weight}}{Guesses of Penelope's weight, in pounds.}
  }
}
\source{
\url{https://www.npr.org/sections/money/2015/08/07/429720443/17-205-people-guessed-the-weight-of-a-cow-heres-how-they-did}
}
\examples{
data(penelope)
hist(penelope$weight)
summary(penelope$weight)
}
\keyword{datasets}
