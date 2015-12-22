\name{unemploy.pres}
\alias{unemploy.pres}
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
    \item{\code{change}}{Change in House seats for the president's party.}
  }
}
\source{Wikipedia.}
\examples{
data(unemploy.pres)
## maybe str(unemploy.pres) ; plot(unemploy.pres) ...
}
\keyword{datasets}