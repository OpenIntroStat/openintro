\name{cle.sac}
\alias{cle.sac}
\alias{cle_sac}
\docType{data}
\title{
  Cleveland and Sacramento
}
\description{
  Data on a sample of 500 people from the Cleveland, OH and Sacramento, CA metro areas.
}
\usage{data("cle.sac")}
\format{
  A data frame with 500 observations representing people on the following 8 variables.
  \describe{
    \item{\code{year}}{Year the data was collected.}
    \item{\code{state}}{State where person resides.}
    \item{\code{city}}{City.}
    \item{\code{age}}{Age of the person.}
    \item{\code{sex}}{Gender.}
    \item{\code{race}}{Ethnicity.}
    \item{\code{marital_status}}{Marital status.}
    \item{\code{personal_income}}{Personal income.}
  }
}
\examples{
data(cle.sac)
d <- cle.sac[!is.na(cle_sac$personal_income),]
set.seed(8957)
is.sac <- d$city == "Sacramento_ CA"
is.cle <- d$city == "Cleveland_ OH"
sac <- sample(d$personal_income[is.sac], 17)
cle <- sample(d$personal_income[is.cle], 21)
par(mfrow = c(2, 1), las = 1)
histPlot(sac, breaks = 8)
histPlot(cle, breaks = 8)
}
\keyword{datasets}
