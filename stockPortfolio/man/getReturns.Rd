\name{getReturns}
\alias{getReturns}
\alias{stockReturns}
\alias{print.stockReturns}
\alias{summary.stockReturns}
\alias{plot.stockReturns}
\alias{pairs.stockReturns}
\alias{lines.stockReturns}
\title{Obtain stock data from Yahoo Finance}
\description{
Download a collection of stock data from Yahoo Finance.
}
\usage{
getReturns(ticker, freq = c("month", "week", "day"),
   get = c("overlapOnly", "all"), start = "1970-01-01", end = NULL)
}
\arguments{
  \item{ticker}{ A character vector where each element is a ticker.}
  \item{freq}{ The frequency of the stock data to be downloaded. Default is \code{"month"} for 12 observations per year and other options are \code{"week"} and \code{"day"}.}
  \item{get}{ The default, \code{"overlapOnly"}, will return the stock returns for which all stocks had data and drop any dates with \code{NA}; if it is monthly data, minor corrections are made when appropriate. The \code{"all"} option yields all stock returns regardless of whether data for all stocks is available; stock data obtained under the \code{"all"} option may not work in the other functions in this package if \code{NA} values are present.}
  \item{start}{ Start date in the format \code{"YYYY-MM-DD"}.}
  \item{end}{ End date in the format \code{"YYYY-MM-DD"}. If using \code{freq="month"} (the default) or \code{freq="week"}, the \code{DD} should be specified as the last day of the month or week, respectively.}
}
\value{
  \code{getReturns} outputs an object of class \code{"stockReturns"}, which is a list of the following:
  \item{R }{ Stock returns, where the first row is the most recent and the last row is the oldest.}
  \item{ticker }{ The tickers of the stocks.}
  \item{period }{ How frequently stock returns are included in the data.}
  \item{start }{ The oldest date for which stock returns are included.}
  \item{end }{ The most recent date for which stock returns are included.}
  \item{full }{ A list, where each item is a data frame containing information from the CSV file downloaded from Yahoo Finance.}
}
\author{David Diez and Nicolas Christou}

\seealso{\code{\link{stockModel}}, \code{\link{optimalPort}}, \code{\link{testPort}}, \code{\link{portReturn}}}
\examples{
#===> Citi and Bank of America, 2004-2008 <===#
# cBac <- getReturns(c('C','BAC'), start='2004-01-01', end='2008-12-31')
# print(cBac)
# summary(cBac)
# plot(cBac)
# lines(cBac, lwd=2)
# pairs(cBac)
}
