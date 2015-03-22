\name{confBands}
\alias{confBands}
\alias{lines.confBands}
\title{Confidence bands for a survival curve}
\description{
A function for constructing confidence bands for a survival curve. This is in contrast to pointwise confidence intervals for the survival curve.
}
\usage{
confBands(x, confType = c("plain", "log-log", "asin-sqrt"),
     confLevel = c(0.9, 0.95, 0.99), type = c("ep", "hall"),
     tL, tU)
}
\arguments{
  \item{x}{ An object of class \code{"Surv"}. }
  \item{confType}{ The type of confidence ban. There are three options: \code{"plain"}, \code{"log-log"}, and \code{"asin-sqrt"}. Entering only the first letter of the option (e.g. \code{"p"} for code{"plain"}) is sufficient. }
  \item{confLevel}{ Confidence level. Only numerical values of \code{0.9}, \code{0.95}, or \code{0.99} are accepted. }
  \item{type}{ The type of method used to construct the confidence band. Available options are EP (\code{"ep"}) and Hall-Wellner (\code{"hall"}) confidence bands. Entering only the first letter of the option is sufficient.}
  \item{tL}{ A minimum time to be considered. The default is the first observed or censored time. }
  \item{tU}{ A maximum time to be considered. The default it the last observed time. }
}
\details{See References.}
\value{
Returns an object of class \code{"confBands"}, which is a list of three items:
\item{time}{ A vector of times. }
\item{lower}{ A vector of the lower band values corresponding to the times. }
\item{upper}{ A vector of the upper band values corresponding to the times. }
}
\references{
Klein JP, Moeschberger ML (2003). Survival Analysis: Techniques for Censored and Truncated Data. Springer Verlag, New York.
}
\author{David M Diez}
\seealso{
\code{\link{relapse}}
}
\examples{
#=====> 5. Kaplan-Meier confidence bands <=====#
data(bmt)
attach(bmt)
mySurv <- Surv(t2[group==1], d3[group==1])
#pdf("confBand.pdf", 7, 4.5)
#par(mar=c(3.9, 3.9, 2.5, 1), mgp=c(2.6, 0.7, 0))
plot(survfit(mySurv ~ 1), xlim=c(100, 600), xlab='time',
     ylab='Estimated Survival Function',
     main='Reproducing Confidence Bands, bone marrow transplant')
myCB <- confBands(mySurv)
lines(myCB, lty=3)
legend(100, 0.3, legend=c('K-M survival estimate',
     'pointwise intervals','EP confidence bands'), lty=1:3)
#dev.off()
detach(bmt)
}
