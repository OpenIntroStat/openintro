\name{sp500}
\alias{sp500}
\docType{data}
\title{ Financial information for 50 S&P 500 companies }
\description{ Fifty companies were randomly sampled from the 500 companies in the S&P 500, and their financial information was collected on March 8, 2012. }
\usage{data(sp500)}
\format{
  A data frame with 50 observations on the following 12 variables.
  \describe{
    \item{\code{market_cap}}{Total value of all company shares, in millions of dollars.}
    \item{\code{stock}}{The name of the stock (e.g. \code{AAPL} for Apple).}
    \item{\code{ent_value}}{Enterprise value, which is an alternative to market cap that also accounts for things like cash and debt, in millions of dollars.}
    \item{\code{trail_pe}}{The market cap divided by the earnings (profits) over the last year.}
    \item{\code{forward_pe}}{The market cap divided by the forecasted earnings (profits) over the next year.}
    \item{\code{ev_over_rev}}{Enterprise value divided by the company's revenue.}
    \item{\code{profit_margin}}{Percent of earnings that are profits.}
    \item{\code{revenue}}{Revenue, in millions of dollars.}
    \item{\code{growth}}{Quartly revenue growth (year over year), in millions of dollars.}
    \item{\code{earn_before}}{Earnings before interest, taxes, depreciation, and amortization, in millions of dollars.}
    \item{\code{cash}}{Total cash, in millions of dollars.}
    \item{\code{debt}}{Total debt, in millions of dollars.}
  }
}
\source{ Yahoo! Finance, \href{http://finance.yahoo.com/}{finance.yahoo.com}, collected March 8, 2012. }
\references{ OpenIntro, \href{http://www.openintro.org}{openintro.org} }
\examples{
data(sp500)
plot(sp500$ent_value, sp500$earn_before)

plot(sp500$ev_over_rev, sp500$forward_pe)

plot(sp500$ent_value, sp500$earn_before, log="xy")

plot(sp500$ev_over_rev, sp500$forward_pe, log="xy")
}
\keyword{datasets}
\keyword{SP 500}
\keyword{stocks}
\keyword{financial}
\keyword{money}
