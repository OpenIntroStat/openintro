\name{adjustBeta}
\alias{adjustBeta}
\title{Adjust the beta parameters from a single index model}
\description{
Given a \code{stockModel} object that is based on the single index model, the beta parameters may be adjusted using either the Blume or Vasicek technique. This function outputs a new object of class \code{"stockModel"} based on the single index model.
}
\usage{
adjustBeta(model, model2 = NULL, method = c("Blume", "Vasicek"))
}
\arguments{
  \item{model}{ An object of class \code{"stockModel"} that is based on the single index model. If using Blume's method, then this model should be for the first period.}
  \item{model2}{ An object of class \code{"stockModel"} that is based on the single index model. If using Blume's method, then this model should be for the second period. If using Vasicek's method, then this model is ignored.}
  \item{method}{ The single index model adjustment method. The options are \code{"Blume"} (default) or \code{"Vasicek"}. Setting it to any character string other than \code{"B"}, \code{"b"}, \code{"Blume"}, \code{"blume"}, or \code{"1"} will result in using the Vasicek method.}
}
\details{
The single index model results in a vector of parameter estimates, which is typically labeled using the Greek letter beta. Both the Blume and Vasicek methods adjust the beta parameter vector. Vasicek's method regresses all of the elements of beta towards the mean of those elements; the amount of this correction is based both on the variability of the elements of beta and also on the estimated standard error of each element of beta. Blume's method takes beta estimates from two time periods and creates a regression equation: beta2 = b0 + b1*beta1. Blume's method uses this regression equation to estimate beta for the time following the second period.
}
\value{
  \code{adjustBeta} returns an object of class \code{"stockModel"}.
}
\references{Blume, Marshall E. "Portfolio Theory: A Step Toward Its Practical Application," Journal of Business, 43, No. 2 (April 1970), pp. 152-173.}
\author{David Diez}
\seealso{\code{\link{getReturns}}, \code{\link{stockModel}}, \code{\link{optimalPort}}}
\examples{
#===> build two single index models <===#
data(stock94)
data(stock99)
data(stock94Info)
sim1 <- stockModel(stock94, model='SIM',
                   industry=stock94Info$industry, index=25)
sim2 <- stockModel(stock99, model='SIM',
                   industry=stock94Info$industry, index=25)

#===> adjust the betas <===#
# the output is a new stock model
simBlu <- adjustBeta(sim1, sim2)
simVas <- adjustBeta(sim2, method='Vasicek')

#===> build optimal portfolios <===#
opSim <- optimalPort(sim2)
opBlu <- optimalPort(simBlu)
opVas <- optimalPort(simVas)

#===> test portfolios on 2004-9 <===#
data(stock04)
tpSim <- testPort(stock04, opSim)
tpBlu <- testPort(stock04, opBlu)
tpVas <- testPort(stock04, opVas)

#===> compare performances <===#
plot(tpSim, ylim=c(1,2.2))
lines(tpBlu, col=2, lty=2)
lines(tpVas, col=3, lty=3)
legend('topleft', col=1:3, lty=1:3, legend=c('none', 'Blume', 'Vasicek'))
}