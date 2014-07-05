\name{dotPlotStack}
\alias{dotPlotStack}
\title{Add a Stacked Dot Plot to an Existing Plot}
\description{Add a stacked dot plot to an existing plot. The locations for the points in the dot plot are returned from the function in a list.}
\usage{
dotPlotStack(x, radius = 1, seed = 1, addDots = TRUE, ...)
}
\arguments{
  \item{x}{ A vector of numerical observations for the dot plot. }
  \item{radius}{ The approximate distance that should separate each point.}
  \item{seed}{ A random seed (integer). Different values will produce different variations. }
  \item{addDots}{ Indicate whether the points should be added to the plot. }
  \item{\dots}{ Additional arguments are passed to \code{\link[graphics]{points}}. }
}
\value{
Returns a list with a height that can be used as the upper bound of ylim for a plot, then also the x- and y-coordinates of the points in the stacked dot plot.
}
\references{
~~ OpenIntro Statistics, \href{http://www.openintro.org/stat/textbook.php}{openintro.org} ~~}
\author{ David Diez }
\seealso{
\code{\link{dotPlot}}, \code{\link{histPlot}}
}
\examples{
#
}
\keyword{ stacked dot plot }
\keyword{ dot plot }
