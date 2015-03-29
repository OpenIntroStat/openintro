\name{stock99}
\alias{stock99}
\docType{data}
\title{Data for 24 stocks and 1 index, 1999-2004}
\description{
Sixty monthly stock observations from \code{1999-10-01} to \code{2004-09-01} for 24 stocks in six industries. There is also a 25th column for an index, the S&P500.
}
\usage{data(stock99)}
\format{
  The format is numerical with 60 rows and 25 columns. The column names provide the tickers, and row names describe the dates.
}
\details{
See \code{\link{stock94Info}} for a breakdown of the stocks by industry.
}
\source{
Yahoo Finance.
}
\seealso{
\code{\link{stock94Info}}, \code{\link{stock94}}, \code{\link{stock04}}, \code{\link{stockModel}}
}
\examples{
data(stock99)
data(stock94Info)
sm <- stockModel(stock99, model='SIM', index=25,
                 industry=stock94Info$industry)
}
\keyword{datasets}
