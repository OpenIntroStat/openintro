\name{goog}
\alias{goog}
\docType{data}
\title{Google stock data}
\description{Google stock data from 2006 to early 2014, where data from the first day each month was collected.}
\usage{data("goog")}
\format{
  A data frame with 98 observations on the following 7 variables.
  \describe{
    \item{\code{Date}}{a factor with levels \code{2006-01-03}, \code{2006-02-01}, and so on}
    \item{\code{Open}}{a numeric vector}
    \item{\code{High}}{a numeric vector}
    \item{\code{Low}}{a numeric vector}
    \item{\code{Close}}{a numeric vector}
    \item{\code{Volume}}{a numeric vector}
    \item{\code{Adj.Close}}{a numeric vector}
  }
}
\source{Yahoo! Finance.}
\examples{
data(goog)
## maybe str(goog) ; plot(goog) ...
}
\keyword{datasets}
