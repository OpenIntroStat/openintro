\name{stocks_18}
\alias{stocks_18}
\docType{data}
\title{
  Monthly Returns for a few stocks
}
\description{
  Monthly return data for a few stocks, which covers stock prices
  from November 2015 through October 2018.
}
\usage{data("stocks_18")}
\format{
  A data frame with 36 observations on the following 3 variables.
  \describe{
    \item{\code{date}}{First day of the month corresponding
    	    to the returns.}
    \item{\code{goog}}{Google stock price change.}
    \item{\code{cat}}{Caterpillar stock price change.}
    \item{\code{xom}}{Exxon Mobil stock price change.}
  }
}
\source{
Yahoo! Finance, direct download.
}
\examples{
d <- stocks_18
dim(d)
apply(d[, 2:3], 2, mean)
apply(d[, 2:3], 2, sd)
}
\keyword{datasets}
