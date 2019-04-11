\name{unemploy.pres}
\alias{unemploy.pres}
\docType{data}
\title{President's party performance and unemployment rate}
\description{
  Newer version of this data: \code{\link{midterms_house}}.
  Covers midterm elections.
}
\usage{data("unemploy.pres")}
\format{
  A data frame with 29 observations on the following 5 variables.
  \describe{
    \item{\code{year}}{a numeric vector}
    \item{\code{potus}}{The president in office.}
    \item{\code{party}}{President's party.}
    \item{\code{unemp}}{Unemployment rate.}
    \item{\code{change}}{
      Change in House seats for the president's party.
    	}
  }
}
\source{Wikipedia.}
\seealso{\code{\link{midterms_house}}}
\examples{
data(unemploy.pres)
plot(unemploy.pres$unemp, unemploy.pres$change)
}
\keyword{datasets}