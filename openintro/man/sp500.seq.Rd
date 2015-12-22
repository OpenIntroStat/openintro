\name{sp500.seq}
\alias{sp500.seq}
\docType{data}
\title{S&P 500 stock data}
\description{Daily stock returns from the S&P500 for 1990-2011 can be used to assess whether stock activity each day is independent of the stock's behavior on previous days. We label each day as Up or Down (D) depending on whether the market was up or down that day. For example, consider the following changes in price, their new labels of up and down, and then the number of days that must be observed before each Up day.}
\usage{data("sp500.seq")}
\format{
  A data frame with 2948 observations on the following variable.
  \describe{
    \item{\code{race}}{a factor with levels \code{1} \code{2} \code{3} \code{4} \code{5} \code{6} \code{7+}}
  }
}
\source{http://www.google.com/finance}
\examples{
data(sp500.seq)
## maybe str(sp500.seq) ; plot(sp500.seq) ...
}
\keyword{datasets}