\name{boxPlot}
\alias{boxPlot}
\title{Box plot}
\description{
An alternative to \code{boxplot}. Equations are not accepted. Instead, the second argument, \code{fact}, is used to split the data.
}
\usage{
boxPlot(x, fact=NULL, horiz=FALSE, width=2/3, lwd=1,
        lcol='black', medianLwd=2, pch=20, pchCex=1.8,
        col=rgb(0,0,0,0.25), add=FALSE, key=NULL,
        axes=TRUE, xlab='', ylab='', xlim=NULL, ylim=NULL,
        na.rm=TRUE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ A numerical vector. }
  \item{fact}{ A character or factor vector defining the grouping for side-by-side box plots. }
  \item{horiz}{ If \code{TRUE}, the box plot is oriented horizontally. }
  \item{width}{ The width of the boxes in the plot. Value between \code{0} and \code{1}. }
  \item{lwd}{ Width of lines used in box and whiskers. }
  \item{lcol}{ Color of the box, median, and whiskers. }
  \item{medianLwd}{ Width of the line marking the median. }
  \item{pch}{ Plotting character of outliers. }
  \item{pchCex}{ Size of outlier character. }
  \item{col}{ Color of outliers. }
  \item{add}{ If \code{FALSE}, a new plot is created. Otherwise, the boxplots are added to the current plot for values of \code{TRUE} or a numerical vector specifying the locations of the boxes. }
  \item{key}{ The order in which to display the side-by-side boxplots. If locations are specified in \code{add}, then the elements of \code{add} will correspond to the elements of \code{key}. }
  \item{axes}{ Whether to plot the axes. }
  \item{xlab}{ Label for the x axis. }
  \item{ylab}{ Label for the y axis. }
  \item{xlim}{ Limits for the x axis. }
  \item{ylim}{ Limits for the y axis. }
  \item{na.rm}{ Indicate whether \code{NA} values should be removed. }
  \item{\dots}{ Additional arguments to plot. }
}
\author{ David Diez }
\seealso{ \code{\link{histPlot}}, \code{\link{dotPlot}}, \code{\link{densityPlot}} }
\examples{
data(run10)
par(mfrow=1:2)

#===> comparison 1 <===#
boxPlot(run10$time)
boxplot(run10$time)

#===> comparison 2 <===#
boxPlot(run10$time, run10$gender, col=fadeColor('black', '22'))
boxplot(run10$time ~ run10$gender)

#===> modifications using boxPlot <===#
par(mfrow=c(2,2))
boxPlot(run10$time, run10$gender)
boxPlot(run10$time, run10$gender, xlab='gender',
	ylab='run time (min)',
	col=fadeColor('black', '18'))
plot(0,0, xlab='gender', ylab='run time (min)',
	xlim=c(0,6), ylim=c(30, 180), axes=FALSE)
boxPlot(run10$time, run10$gender, width=0.5, lwd=2,
	lcol=4, medianLwd=4, pch=1, pchCex=1, col=4,
	add=c(1,2,5), key=c('M','F','N'))
plot(0,0, ylab='gender', xlab='run time (min)',
	xlim=c(30, 180), ylim=c(0, 3), axes=FALSE)
boxPlot(run10$time, run10$gender, horiz=TRUE,
	xlab='run time (min)', ylab='gender',
	add=1:2, key=c('F','M'))
# 'key' can be used to restrict to only the
# desired groups

#===> combine boxPlot and dotPlot <===#
data(tips)
par(mfrow=c(1,1))
boxPlot(tips$tip, tips$day, horiz=TRUE, key=c('Tuesday', 'Friday'))
dotPlot(tips$tip, tips$day, add=TRUE, at=1:2+0.05,
	key=c('Tuesday', 'Friday'))

#===> adding a box <===#
par(mfrow=1:2)
boxPlot(run10$time[run10$gender=='M'], xlim=c(0,3))
boxPlot(run10$time[run10$gender=='F'], add=2, axes=FALSE)
axis(1, at=1:2, labels=c('M', 'F'))
boxPlot(run10$time[run10$gender=='M'], ylim=c(0,3), horiz=TRUE)
boxPlot(run10$time[run10$gender=='F'], add=2, horiz=TRUE, axes=FALSE)
axis(2, at=1:2, labels=c('M', 'F'))
}
