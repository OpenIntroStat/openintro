\name{possum}
\alias{possum}
\docType{data}
\title{ possum }
\description{
Data representing possums in Australia and New Guinea. This is a copy of the data set by the same name in the \code{DAAG} package, however, the data set included here includes fewer variables.
}
\usage{data(possum)}
\format{
  A data frame with 104 observations on the following 8 variables.
  \describe{
    \item{\code{site}}{ The site number where the possum was trapped. }
    \item{\code{pop}}{ Population, either \code{Vic} (Victoria) or \code{other} (New South Wales or Queensland).}
    \item{\code{sex}}{ Gender, either \code{m} (male) or \code{f} (female).}
    \item{\code{age}}{ Age. }
    \item{\code{headL}}{ Head length, in mm. }
    \item{\code{skullW}}{ Skull width, in mm. }
    \item{\code{totalL}}{ Total length, in cm. }
    \item{\code{tailL}}{ Tail length, in cm. }
  }
}
\source{
Lindenmayer, D. B., Viggers, K. L., Cunningham, R. B., and Donnelly, C. F. 1995. Morphological variation among columns of the mountain brushtail possum, Trichosurus caninus Ogilby (Phalangeridae: Marsupiala). Australian Journal of Zoology 43: 449-458.
}
\references{
\url{http://www.openintro.org/}
}
\examples{
data(possum)
par(mfrow=1:2)
plot(possum$headL, possum$skullW)
densityPlot(possum$totalL, possum$sex, key=c('f','m'),
	xlab='total length (cm)')
legend('topright', col=c('black', 'red'), lty=1:2, legend=c('f', 'm'))
}
\keyword{datasets}
