\name{stockModel}
\alias{stockModel}
\alias{print.stockModel}
\alias{summary.stockModel}
\alias{plot.stockModel}
\alias{points.stockModel}
\title{Create a stock model}
\description{
Input an object of class \code{"stockReturns"} and select a model. Available choices are \code{"none"}, \code{"SIM"} (single index model), \code{"CCM"} (constant correlation model), and \code{"MGM"} (multigroup model).
}
\usage{
stockModel(stockReturns, drop = NULL, Rf = 0, shortSelling = c("y", "n"),
   model = c("none", "SIM", "CCM", "MGM"), industry = NULL, index = NULL,
   get = c("overlapOnly", "all"), freq = c("month", "week", "day"),
   start = "1970-01-01", end = NULL, recentLast = FALSE,
   rawStockPrices = FALSE)
}
\arguments{
  \item{stockReturns}{ An object of class \code{"stockReturns"}. Additionally, a character vector of tickers can also be used here, in which case also see argument \code{freq}, \code{get}, \code{start}, and \code{end}. Additionally, an object of class \code{"stockModel"} can also be input here, which will permit model adjustments, including switching the model altogether. Finally, stock data can also be submitted here as a matrix; the column names should be the ticker names and the row names should be the dates of the returns, \code{YYYY-MM-DD}. Additionally, for outside data sets where the oldest stock return is in row 1 (and not the last row), see argument \code{recentLast}.}
  \item{drop}{ Declare any stocks to be dropped. For instance, if the model \code{"none"}, \code{"CCM"}, or \code{"MGM"} is used, stock indices might be dropped.}
  \item{Rf}{ The risk free rate of return, which must be standardized for the period (e.g. a 2\% yearly rate for monthly data would imply \code{Rf=0.02/12}, or 2\% with daily data would imply \code{Rf=0.02/250} if there are 250 trading days per year.). The default value is 0.}
  \item{shortSelling}{ Either \code{"yes"} (default) or \code{"no"}. Some models, \code{"none"} and \code{"MGM"}, will permit short-selling regardless of this selection.}
  \item{model}{ Either no model (\code{"none"}, the default), the single index model (\code{"SIM"}), constant correlation model (\code{"CCM"}), or the multigroup model (\code{"MGM"}).}
  \item{industry}{ A character or factor vector containing the industries corresponding to stockReturns. This argument is optional except when \code{model="MGM"}, however, it may be included in any model for slightly enhanced graphics.}
  \item{index}{ When using \code{model="SIM"}, the \code{index} is the column number indicating the stock index. Warning if using \code{drop} and also specifying the index: The value of \code{index} should correspond to the column number AFTER dropping columns. See Details below.}
  \item{get}{ \code{"overlapOnly"} (default) obtains stock returns for which all stocks had data and drops any dates with \code{NA}. \code{"all"} yields all stock returns regardless of whether data for all stocks is available. This argument is ignored unless \code{stockReturns} is a vector of tickers.}
  \item{freq}{ The time period between each stock return. Default is \code{"month"} and other options are \code{"week"} and \code{"day"}. This argument is ignored unless \code{stockReturns} is a vector of tickers.}
  \item{start}{ Start date in the format \code{"YYYY-MM-DD"}. This argument is ignored unless \code{stockReturns} is a vector of tickers.}
  \item{end}{ End date in the format \code{"YYYY-MM-DD"}. This argument is ignored unless \code{stockReturns} is a vector of tickers.}
  \item{recentLast}{ Set this argument to \code{TRUE} if (1) you are using your own data that was not obtained by \code{\link{getReturns}} and (2) your matrix of returns runs from oldest returns (row 1) to most recent returns (last row).}
  \item{rawStockPrices}{ Set to \code{TRUE} if (1) you are using your own data that was not obtained by \code{\link{getReturns}} and (2) your matrix is of stock prices and not of stock returns.}
}
\details{
The multigroup model is the least known of the models presented here. It is similar to the constant correlation model, except that instead of assuming a constant correlation across all stocks, correlations are only dependent on the industry of a stock.

If stocks are dropped using the argument \code{drop}, then \code{index} must correspond to the position of the index AFTER those stocks are dropped. For instance, if there are seven stocks, the index is in position six, and the fourth stock is dropped, then we should use \code{index=5}.
}
\value{
  \code{stockModel} outputs an object of class \code{"stockModel"}, which is a list of the following items, many of which might be \code{NA}:
  \item{model }{ The model selected.}
  \item{ticker }{ A vector of the tickers of the stocks included in the model.}
  \item{index }{ The index number, if provided by the user.}
  \item{theIndex }{ Ticker of the index.}
  \item{industry }{ Industries associated with the stocks.}
  \item{returns }{ Return data used to build the model.}
  \item{marketReturns }{ Return data of the index.}
  \item{n }{ Number of observations per stock.}
  \item{start }{ The oldest date for which stock returns are included.}
  \item{end }{ The most recent date for which stock returns are included.}
  \item{period }{ How frequently stock returns are included in the data.}
  \item{R }{ Average returns of the stocks.}
  \item{COV }{ Variance-covariance matrix of the stock returns.}
  \item{sigma }{ Standard deviation of the returns of the stocks (square root of the diagonal of \code{COV}).}
  \item{shorts }{ Whether short sales are allowed.}
  \item{Rf }{ Risk free return rate.}
  \item{alpha }{ Vector of intercepts in the linear model for the single index model.}
  \item{vAlpha }{ The square of the standard errors of \code{alpha}.}
  \item{beta }{ Vector of coefficients in the linear model for the single index model.}
  \item{vBeta }{ The square of the standard errors of \code{beta}.}
  \item{betaAdj }{ Whether the model was adjusted via \code{\link{adjustBeta}}.}
  \item{MSE }{ Variance of error term associated with single index model for each stock.}
  \item{RM }{ Mean market return.}
  \item{VM }{ Variance of the market return.}
  \item{rho }{ Mean correlation or, if using \code{model="MGM"}, the matrix of averaged correlations. See \code{\link{getCorr}}.}
}
\references{
Markowitz, Harry. "Portfolio Selection Efficient Diversification of Investments." New York: John Wiley and Sons, 1959.

Elton, Edwin, J., Gruber, Martin, J., Padberg, Manfred, W. "Simple
Criteria for Optimal Portfolio Selection," Journal of Finance, XI, No. 5
(Dec. 1976), pp. 1341-1357.

Elton, Edwin, J., Gruber, Martin, J., Padberg, Manfred, W. "Simple Rules
for Optimal Portfolio Selection:  The Multi Group Case," Journal of
Financial and Quantitative Analysis, XII, No. 3 (Sept. 1977), pp. 329-345.

Elton, Edwin, J., Gruber, Martin, J., Padberg, Manfred, W. "Simple
Criteria for Optimal Portfolio Selection:  Tracing Out the Efficient
Frontier," Journal of Finance, XIII, No. 1 (March 1978), pp. 296-302.
}
\author{David Diez and Nicolas Christou}
\seealso{\code{\link{getReturns}}, \code{\link{adjustBeta}}, \code{\link{optimalPort}}, \code{\link{testPort}}}
\examples{
#===> build four models <===#
data(stock99)
data(stock94Info)
non <- stockModel(stock99, drop=25, model='none', industry=stock94Info$industry)
sim <- stockModel(stock99, model='SIM', industry=stock94Info$industry, index=25)
ccm <- stockModel(stock99, drop=25, model='CCM', industry=stock94Info$industry)
mgm <- stockModel(stock99, drop=25, model='MGM', industry=stock94Info$industry)

#===> build optimal portfolios <===#
opNon <- optimalPort(non)
opSim <- optimalPort(sim)
opCcm <- optimalPort(ccm)
opMgm <- optimalPort(mgm)

#===> test portfolios on 2004-9 <===#
data(stock04)
tpNon <- testPort(stock04, opNon)
tpSim <- testPort(stock04, opSim)
tpCcm <- testPort(stock04, opCcm)
tpMgm <- testPort(stock04, opMgm)

#===> compare performances <===#
plot(tpNon)
lines(tpSim, col=2, lty=2)
lines(tpCcm, col=3, lty=3)
lines(tpMgm, col=4, lty=4)
legend('topleft', col=1:4, lty=1:4, legend=c('none', 'SIM', 'CCM', 'MGM'))
}
