\name{tips}
\alias{tips}
\docType{data}
\title{ Tip data }
\description{
A simulated data set of tips over a few weeks on a couple days per week. Each tip is associated with a single group, which may include several bills and tables (i.e. groups paid in one lump sum in simulations).
}
\usage{data(tips)}
\format{
  A data frame with 95 observations on the following 5 variables.
  \describe{
    \item{\code{week}}{ Week number. }
    \item{\code{day}}{ Day, either \code{Friday} or \code{Tuesday}. }
    \item{\code{nPeop}}{ Number of people associated with the group. }
    \item{\code{bill}}{ Total bill for the group. }
    \item{\code{tip}}{ Total tip from the group. }
  }
}
\details{
This data set was built using simulations of tables, then bills, then tips based on the bills. Large groups were assumed to only pay the gratuity, which is evident in the data. Tips were set to be plausible round values; they were often (but not always) rounded to dollars, quarters, etc.
}
\source{
Simulated data set.
}
\references{
\url{http://www.openintro.org/}
}
\examples{
data(tips)
par(mfrow=c(2,2))
boxPlot(tips$tip, tips$day)
densityPlot(tips$tip, tips$week, key=1:3)
legend('topright', lty=1:3, col=c('black', 'red', 'blue'), legend=1:3)
dotPlot(tips$tip)
densityPlot(tips$tip, tips$day)
legend('topright', col=c('black','red'), lty=1:2,
	legend=c('Tuesday', 'Friday'))
}
\keyword{datasets}
