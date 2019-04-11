\name{midterms_house}
\alias{midterms_house}
\docType{data}
\title{President's party performance and unemployment rate}
\description{Covers midterm elections.}
\usage{data("unemploy.pres")}
\format{
  A data frame with 29 observations on the following 5 variables.
  \describe{
    \item{\code{year}}{a numeric vector}
    \item{\code{potus}}{The president in office.}
    \item{\code{party}}{President's party.}
    \item{\code{unemp}}{Unemployment rate.}
    \item{\code{house_change}}{
      Change in House seats for the president's party.
    }
  }
}
\details{An older version of this data is at \code{\link{unemploy.pres}}.}
\source{Wikipedia.}
\examples{
data(midterms_house)
plot(midterms_house$unemp, midterms_house$change)
}
\keyword{datasets}
