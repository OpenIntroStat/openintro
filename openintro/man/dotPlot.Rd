\name{dotPlot}
\alias{dotPlot}
\title{ Dot plot }
\description{
Plot observations as dots.
}
\usage{
dotPlot(x, fact = NULL, vertical = FALSE, at = 1, key = NULL,
	pch = 20, col = fadeColor("black", "66"), cex = 1.5,
	add = FALSE, axes = TRUE, xlim = NULL, ylim = NULL, ...)
}
\arguments{
  \item{x}{ A numerical vector. }
  \item{fact}{ A character or factor vector defining the grouping for data in \code{x}. }
  \item{vertical}{ If \code{TRUE}, the plot will be oriented vertically. }
  \item{at}{ The vertical coordinate of the points, or the horizontal coordinate if \code{vertical=TRUE}. If \code{fact} is provided, then locations can be specified for each group. }
  \item{key}{ The factor levels corresponding to \code{at}, \code{pch}, \code{col}, and \code{cex}. }
  \item{pch}{ Plotting character. If \code{fact} is given, then different plotting characters can be specified for each factor level. If \code{key} is specified, the elements of \code{pch} will correspond to the elements of \code{key}. }
  \item{col}{ Plotting character color. If \code{fact} is given, then different colors can be specified for each factor level. If \code{key} is specified, the elements of \code{col} will correspond to the elements of \code{key}. }
  \item{cex}{ Plotting character size. If \code{fact} is given, then different character sizes can be specified for each factor level. If \code{key} is specified, the elements of \code{cex} will correspond to the elements of \code{key}. }
  \item{add}{ If \code{TRUE}, then the points are added to the plot. }
  \item{axes}{ If \code{FALSE}, no axes are plotted. }
  \item{xlim}{ Limits for the x axis. }
  \item{ylim}{ Limits for the y axis. }
  \item{\dots}{ Additional arguments to be passed to \code{plot} if \code{add=FALSE} or \code{points} if \code{add=TRUE}. }
}

\author{David Diez}
\seealso{ \code{\link{histPlot}}, \code{\link{densityPlot}}, \code{\link{boxPlot}} }
\examples{
#===> example 1 <===#
data(cars)
dotPlot(cars$price, cars$type, key=c('large', 'midsize', 'small'), cex=1:3)

#===> example 2 <===#
data(run10)
layout(matrix(1:2,2), heights=c(2.7,1.5))
par(las=1)
these <- run10$gender=='M'
dotPlot(run10$time[these], run10$div[these],
	col=fadeColor('black', '11'))
# disorganized levels in the above plot, which we could
# organize with key. an example of organizing the levels...
dotPlot(run10$time[these], run10$div[these],
	col=fadeColor('black', '11'),
	key=c('20-24', '25-29', '30-34', '35-39'))
par(las=0, mfrow=c(1,1))

#===> example 3 <===#
data(marioKart)
dotPlot(marioKart$totalPr, marioKart$cond, ylim=c(0.5,2.5),
	xlim=c(25, 80), cex=1) # miss the outliers
boxPlot(marioKart$totalPr, marioKart$cond, add=1:2+0.1,
	key=c('new', 'used'), horiz=TRUE, axes=FALSE)
}
