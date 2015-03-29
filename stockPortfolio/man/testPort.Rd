\name{testPort}
\alias{testPort}
\alias{print.testPort}
\alias{summary.testPort}
\alias{plot.testPort}
\alias{lines.testPort}
\alias{points.testPort}
\title{Test a portfolio on a data set}
\description{
Test a portfolio allocation on a new data set. This function is useful for comparing portfolios under different data scenarios.
}
\usage{
testPort(theData, model = NULL, X = NULL, newestFirst = TRUE,
   isReturns = NULL)
}
\arguments{
  \item{theData}{ The data set to be used. This may be an object of class \code{"stockReturns"}, a vector of \code{1} plus the returns on each stock, or a matrix of stock returns where rows are ordered observations and columns represent individual stocks (see also argument \code{newestFirst}). The matrix may also be stock prices, in which case see argument \code{isReturns}.}
  \item{model}{ An object of class \code{"stockModel"} or of class \code{"optimalPortfolio"}. The allocation will be set as the optimal portfolio's allocation. To set a different allocation, leave this argument as \code{NULL} and use argument \code{X}.}
  \item{X}{ The stock allocation of the portfolio, where element \code{i} corresponds to stock \code{i} in argument \code{theData}. If \code{model} is given, this argument is ignored.}
  \item{newestFirst}{ If argument \code{theData} is a matrix of stock returns or stock prices, and the rows run from oldest (row 1) to most recent (last row), set \code{newestFirst=FALSE}.}
  \item{isReturns}{ If argument \code{theData} is a matrix of stock prices and not stock returns, set this argument as \code{FALSE}.}
}
\details{
When the argument \code{X} is used or if \code{theData} is not from \code{\link{getReturns}}, provide column names to \code{theData} that correspond with the names of the elements of \code{X}. If \code{theData} is a vector of one plus the returns of each stock, then this vector should have its element names corresponding to those elements in \code{X}.

If \code{theData} is an object of class \code{"stockReturns"} or is a matrix of returns or prices, then this will allow the resulting object of class \code{"testPort"} to be plotted. See the examples for details.
}
\value{
  \code{testPort} outputs an object of class \code{"testPort"}, which consists of the following items:
  \item{X }{ The allocation used.}
  \item{sumRet }{ Summary of the returns for each stock.}
  \item{change }{ The value of the portfolio if it started at 1.}
  \item{returns }{ Return data, if provided.}
}
\author{David Diez and Nicolas Christou}
\seealso{\code{\link{getReturns}}, \code{\link{stockModel}}, \code{\link{optimalPort}}, \code{\link{portReturn}}}
\examples{
#===> build two single index models <===#
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
tpEqu <- testPort(stock04[,-25], X=rep(1,24)/24)
tpNon <- testPort(stock04, opNon)
tpSim <- testPort(stock04, opSim)
tpCcm <- testPort(stock04, opCcm)
tpMgm <- testPort(stock04, opMgm)
print(tpEqu)
summary(tpEqu)

#===> compare performances <===#
plot(tpEqu, ylim=c(1, 3))
lines(tpNon, col=2, lty=2)
lines(tpSim, col=3, lty=3)
lines(tpCcm, col=4, lty=4)
# a sample of how to use points on an object of
# class "testPort", however, its use makes the
# plot somewhat ugly
points(tpMgm, col=5, lty=5, type='b')
legend('topleft', col=1:5, lty=1:5, legend=c('equal all.', 'none', 'SIM', 'CCM', 'MGM'), pch=c(NA, NA, NA, NA, 1))
}
