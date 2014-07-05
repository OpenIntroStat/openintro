\name{openintro-package}
\alias{openintro-package}
\alias{openintro}
\docType{package}
\title{
OpenIntro data sets and supplemental functions
}
\description{
This package is a supplement to OpenIntro Statistics, which is a free textbook available at \href{http://www.openintro.org/}{openintro.org} (at-cost paperbacks are also available for under $10 on Amazon). The package contains data sets used in the textbook along with custom plotting functions for reproducing book figures. Note that many functions and examples include color transparency. Some plotting elements may not show up properly (or at all) in some Windows versions.
}
\details{
\tabular{ll}{
Package: \tab openintro\cr
Type: \tab Package\cr
Version: \tab 1.5.0\cr
Date: \tab 2013-10-28\cr
License: \tab GPL-2 | GPL-3\cr
LazyLoad: \tab yes\cr
}
\code{\link{boxPlot}}, \code{\link{buildAxis}}, \code{\link{densityPlot}}, \code{\link{dotPlot}}, \code{\link{edaPlot}}, \code{\link{histPlot}}, \code{\link{normTail}}, \code{\link{cars}}, \code{\link{marioKart}}, \code{\link{possum}}, \code{\link{run10}}, \code{\link{satGPA}}, \code{\link{textbooks}}

Some colors include transparency, which means they will not be plotted in some operating systems (e.g. Windows). However, the plots may be viewed if they are written to a PDF or PNG file first. For a discussion of this topic, please see

\url{http://yihui.name/en/2007/09/semi-transparent-colors-in-r-color-image-as-an-example/}

Two new functions, \code{\link{myPDF}} and \code{\link{myPNG}}, were created in this package and may also be used to set up nice plotting files that allow for transparency.
}
\author{
David M Diez, Christopher D Barr, Mine Cetinkaya-Rundel

Maintainer: DM Diez <david.m.diez@gmail.com>
}
\keyword{ package }
\examples{

#===> boxPlot <===#
data(run10)
par(mfrow=1:2)
boxPlot(run10$time)
boxplot(run10$time)

#===> histPlot, example 1 <===#
data(run10)
par(mfrow=c(2,2))
histPlot(run10$time)
histPlot(run10$time[run10$gender=='M'], probability=TRUE, xlim=c(30, 180),
	ylim=c(0, 0.025), hollow=TRUE)
histPlot(run10$time[run10$gender=='F'], probability=TRUE, add=TRUE,
	hollow=TRUE, lty=3, border='red')
legend('topleft', col=c('black', 'red'), lty=2:3, legend=c('M','F'))
histPlot(run10$time, col=fadeColor('yellow', '33'), border='darkblue',
	probability=TRUE, breaks=30, lwd=3)
brks <- c(40, 50, 60, 65, 70, 75, 80, seq(82.5, 120, 2.5), 125,
	130, 135, 140, 150, 160, 180)
histPlot(run10$time, probability=TRUE, breaks=brks,
	col=fadeColor('darkgoldenrod4', '33'))

#===> histPlot, example 2 <===#
data(cars)
par(mfrow=c(1,1))
histPlot(cars$price[cars$type=='small'], probability=TRUE, hollow=TRUE,
	xlim=c(0,50))
histPlot(cars$price[cars$type=='midsize'], probability=TRUE, hollow=TRUE,
	add=TRUE, border='red', lty=3)
histPlot(cars$price[cars$type=='large'], probability=TRUE, hollow=TRUE,
	add=TRUE, border='blue', lty=4)
legend('topright', lty=2:4, col=c('black', 'red', 'blue'),
	legend=c('small', 'midsize', 'large'))

#===> densityPlot <===#
data(tips)
par(mfrow=c(1,1))
densityPlot(tips$tip, tips$day)
legend('topright', col=c('black','red'), lty=1:2,
	legend=c('Tuesday', 'Friday'))

#===> identifying reasons for outliers <===#
data(marioKart)
par(mfrow=c(1,1))
boxPlot(marioKart$totalPr, marioKart$cond, horiz=TRUE)
these <- which(marioKart$totalPr > 80)
# see the data collection criteria for
# why these observations do not belong.
lines(rep(marioKart$totalPr[these[1]], 2), c(2.4, 2))
text(marioKart$totalPr[these[1]], 2.4, marioKart$title[these[1]],
	pos=3, cex=0.5)
lines(rep(marioKart$totalPr[these[2]], 2), c(1.6, 2))
text(marioKart$totalPr[these[2]], 1.6, marioKart$title[these[2]],
	pos=1, cex=0.5)

#===> compare plotting methods <===#
data(cars)
par(mfrow=c(1,1))
histPlot(cars$price, ylim=c(0, 0.1), axes=FALSE, ylab='',
	probability=TRUE, xlab='price')
axis(1)
boxPlot(cars$price, width=0.03, horiz=TRUE, add=0.067, axes=FALSE)
dotPlot(cars$price, at=0.095, add=TRUE)
densityPlot(cars$price, add=TRUE)

#===> controlling the number of axis labels <===#
#     specify the number of labels
data(textbooks)
x <- textbooks$diff
par(mfrow=c(3,1))
histPlot(x, axes=FALSE)
buildAxis(1, x, n=4, nMin=4, nMax=4)
histPlot(x, axes=FALSE)
buildAxis(1, x, n=5, nMin=5, nMax=5)
histPlot(x, axes=FALSE)
# no decent axis is found for this data with exactly six labels
# no min or max specified, only a target number of labels:
buildAxis(1, x, n=6)

#===> creating normal plots with tails <===#
par(mfrow=c(2,3), mar=c(3,3,1,1), mgp=c(1.7, 0.7, 0))
normTail(L=-2)
normTail(U=1, xLab='symbol', cex.axis=0.7)
normTail(M=c(-2,-0.3), col='#22558833')
normTail(5, 13, L=-5, M=c(0,3), U=12, xAxisIncr=2)
normTail(102, 4, xlim=c(97,110), M=c(100,103))
normTail(-10.0, 5.192, M=c(-5,2), digits=1, xAxisIncr=2)

#===> Exploratory Data Analysis Plot <===#
data(mlbBat10)
#edaPlot(mlbBat10)
}
