\name{xom}
\alias{xom}
\docType{data}
\title{Exxon Mobile stock data}
\description{Monthly data covering 2006 through early 2014.}
\usage{data("xom")}
\format{
  A data frame with 98 observations on the following 7 variables.
  \describe{
    \item{\code{Date}}{Date.}
    \item{\code{Open}}{a numeric vector}
    \item{\code{High}}{a numeric vector}
    \item{\code{Low}}{a numeric vector}
    \item{\code{Close}}{a numeric vector}
    \item{\code{Volume}}{a numeric vector}
    \item{\code{Adj.Close}}{a numeric vector}
  }
}
\source{http://finance.yahoo.com}
\examples{
data(xom)
## maybe str(xom) ; plot(xom) ...
}
\keyword{datasets}