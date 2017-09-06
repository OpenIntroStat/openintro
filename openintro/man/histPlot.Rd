\name{histPlot}
\alias{histPlot}
\title{ Histogram or hollow histogram }
\description{
Create histograms and hollow histograms. This function permits easy color and appearance customization.
}
\usage{
histPlot(x,
    col = fadeColor("black", "22"), border = "black",
    breaks = "default", probability = FALSE,
    hollow = FALSE, add = FALSE, lty = 2, lwd = 1,
    freqTable=FALSE, right=TRUE, axes = TRUE,
    xlab = NULL, ylab = NULL, xlim = NULL, ylim = NULL,
    ...)
}
\arguments{
  \item{x}{ Numerical vector or a frequency table (matrix) where the first column represents the observed values and the second column the frequencies. See also \code{freqTable} argument. }
  \item{col}{ Shading of the histogram bins. }
  \item{border}{ Color of histogram bin borders. }
  \item{breaks}{ A vector for the bin boundaries or an approximate number of bins. }
  \item{probability}{ If \code{FALSE}, the frequency is plotted. If \code{TRUE}, then a probability density. }
  \item{hollow}{ If \code{TRUE}, a hollow histogram will be created. }
  \item{add}{ If \code{TRUE}, the histogram is added to the plot. }
  \item{lty}{ Line type. Applies only if \code{hollow=TRUE}. }
  \item{lwd}{ Line width. Applies only if \code{hollow=TRUE}. }
  \item{freqTable}{ Set to \code{TRUE} if \code{x} is a frequency table. }
  \item{right}{ Set to \code{FALSE} to assign values of \code{x} that fall on a bin margin to the left bin. Otherwise the ties default to the right bin. }
  \item{axes}{ If \code{FALSE}, the axes are not plotted. }
  \item{xlab}{ Label for the x axis. }
  \item{ylab}{ Label for the y axis. }
  \item{xlim}{ Limits for the x axis. }
  \item{ylim}{ Limits for the y axis. }
  \item{\dots}{ Additional arguments to \code{plot}. If \code{add} is \code{TRUE}, these arguments are ignored. }
}
\author{ David Diez }
\seealso{ \code{\link{boxPlot}}, \code{\link{dotPlot}}, \code{\link{densityPlot}} }
\examples{
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
}
