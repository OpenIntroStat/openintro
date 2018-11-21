\name{stocks_goog_cat}
\alias{stocks_goog_cat}
\docType{data}
\title{
  Monthly Returns for GOOG and CAT
}
\description{
  Monthly return data on the Google and Caterpillar stock prices
  for November 2015 through October 2018.
}
\usage{data("stocks_goog_cat")}
\format{
  A data frame with 36 observations on the following 3 variables.
  \describe{
    \item{\code{date}}{First day of the month corresponding
    	    to the returns.}
    \item{\code{goog}}{Google stock price change.}
    \item{\code{cat}}{Caterpillar stock price change.}
  }
}
\source{
Yahoo! Finance, direct download.
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(stocks_goog_cat)
## maybe str(stocks_goog_cat) ; plot(stocks_goog_cat) ...
}
\keyword{datasets}
