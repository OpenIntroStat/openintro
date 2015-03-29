\name{portReturn}
\alias{portReturn}
\alias{print.portReturn}
\alias{summary.portReturn}
\alias{plot.portReturn}
\alias{points.portReturn}
\title{Estimate return and risk of a portfolio}
\description{
Given a portfolio allocation \code{X} and a model, identify the estimated return and risk associated with \code{X}.
}
\usage{
portReturn(model, X)
}
\arguments{
  \item{model}{ An object of class \code{"stockModel"}.}
  \item{X}{ The portfolio allocation.}
}
\value{
  \code{portReturn} returns a list of the following items:
  \item{R }{ The estimated return.}
  \item{V }{ The estimated risk squared.}
  \item{X }{ The allocation, which is the second argument.}
  \item{ticker }{ The tickers from the model.}
  \item{model }{ An object of class \code{"stockModel"}, which is the same model provided to the function.}
}
\author{David Diez}
\seealso{\code{\link{stockModel}}}
\examples{
#===> basics <===#
data(stock94)
sm <- stockModel(stock94, model='SIM', index=25)
op <- optimalPort(sm)
prOp <- portReturn(sm, op$X)
prUn <- portReturn(sm, rep(1, 24)/24)
print(prOp)
summary(prOp)
summary(prUn)

#===> plotting a "portReturn" object <===#
par(mfrow=c(2,2))
plot(prOp) # provides a heat map of the allocation
plot(prUn) # a boring heat map of allocation
plot(prOp, col=2:5) # many random colors
plot(prUn, col=1) # all black
}