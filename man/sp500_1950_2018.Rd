\name{sp500_1950_2018}
\alias{sp500_1950_2018}
\docType{data}
\title{
  Daily observations for the S\&P 500
}
\description{
  Data runs from 1950 to near the end of 2018.
}
\usage{data("sp500_1950_2018")}
\format{
  A data frame with 17346 observations on the following 7 variables.
  \describe{
    \item{\code{Date}}{Date of the form \code{"YYYY-MM-DD"}.}
    \item{\code{Open}}{Opening price.}
    \item{\code{High}}{Highest price of the day.}
    \item{\code{Low}}{Lowest price of the day.}
    \item{\code{Close}}{Closing price of the day.}
    \item{\code{Adj.Close}}{Adjusted price at close after
    	    accounting for dividends paid out.}
    \item{\code{Volume}}{Trading volume.}
  }
}
\source{
  \url{http://finance.yahoo.com}
}
\examples{
data(sp500_1950_2018)
sp500.ten.years <- subset(sp500_1950_2018,
    "2009-01-01" <= as.Date(Date) & as.Date(Date) <= "2018-12-31")
d <- diff(sp500.ten.years$Adj.Close)
mean(d > 0)

}
\keyword{datasets}
