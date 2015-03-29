\name{stockPortfolio-package}
\alias{stockPortfolio-package}
\alias{stockPortfolio}
\docType{package}
\title{
Build and manage stock models and portfolios
}
\description{
The package \code{stockPortfolio} is a quantitative approach to portfolio allocation among stocks. The package includes functions to download historical data from Yahoo Finance, build models, estimate optimal portfolios, and test portfolios. A large range of graphical features have been included for visual understanding.
}
\details{
\tabular{ll}{
Package: \tab stockPortfolio\cr
Type: \tab Package\cr
Version: \tab 1.2\cr
Date: \tab 2012-03-14\cr
License: \tab GPL (>= 2)\cr
LazyLoad: \tab yes\cr
}

A common starting point in the package is with the \code{\link{getReturns}} function, which can be used to obtain stock data using an internet connection. Using an object of class \code{"stockReturns"} from the \code{getReturns} function, one can build a stock model using the \code{\link{stockModel}} function. There are four model options in \code{stockModel}: no model where a portfolio is selected based on empirical returns, variances, and covariances among the stocks, the single index model, constant correlation model, and the multigroup model. After a stock model has been built, the user can obtain an estimate of the optimal portfolio allocation among those stocks using \code{\link{optimalPort}}. Additionally, one can test out models and portfolios on data sets that are either supplied by the user or are output from \code{getReturns}.

While most objects can be plotted, there are two specialty plotting functions: \code{\link{portPossCurve}} and \code{\link{portCloud}}. The function \code{portPossCurve} plots the portfolio possibilities curve based on a model, and \code{portCloud} plots a cloud of possible portfolios based on a model.

Three data sets and one data "key" have been included as a sample data set: \code{\link{stock94}}, \code{\link{stock99}}, \code{\link{stock04}}, \code{\link{stock94Info}}.

}
\author{
David Diez and Nicolas Christou wrote the package functions.

Maintainer: David Diez <david.m.diez@gmail.com>
}
\references{
Blume, Marshall E. "Portfolio Theory: A Step Toward Its Practical Application," Journal of Business, 43, No. 2 (April 1970), pp. 152-173.

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

Elton, E.J., Gruber, M.J., Brown, S.J., and Goetzmann, W.N. "Modern Portfolio Theory and Investment Analysis" (6th Edition). John Wiley and Sons, 2003.
}
\keyword{ package }
\examples{
#===> two examples of downloading data <===#
\dontrun{grEx1 <- getReturns(c('C','BAC'), start='2004-01-01', end='2008-12-31')}
\dontrun{grEx2 <- getReturns(c('KEY', 'WFC', 'JPM', 'AMR', 'BIIB', 'AMGN'))}

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
