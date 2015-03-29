\name{portPossCurve}
\alias{portPossCurve}
\title{Plot the portfolio possibilities curve}
\description{
Plot the portfolio possibilities curve or the efficient frontier for models that permit short-selling.
}
\usage{
portPossCurve(model, riskRange = 2, detail = 100, effFrontier = FALSE,
   add = FALSE, type = "l", xlab = "Risk", ylab = "Expected Return",
   doNotPlot = FALSE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{model}{ An object of class \code{"stockModel"}.}
  \item{riskRange}{ A parameter to specify how much of the portfolio possibilities curve to plot. If \code{X} is the portfolio with minimum risk without respect to the risk free rate, then the portfolio possibilities curve will be shown up to approximately the risk \code{riskRange*X}.}
  \item{detail}{ The number of points to include on the portfolio possibilities curve. A small number will result a curve that is evidently made up of lines while a large number will provide more detail but takes more memory. The default value is generally adequate.}
  \item{effFrontier}{ If \code{TRUE}, only the efficient frontier is drawn.}
  \item{add}{ If \code{TRUE}, the curve is added to a plot. Otherwise a new plot is created.}
  \item{type}{ Plotting method. \code{"p"} for points, \code{"l"} for lines, \code{"b"} for both lines and points, and \code{"n"} to produce no points or lines.}
  \item{xlab}{ Label for the x axis. Only applied if \code{add=FALSE}.}
  \item{ylab}{Label for the y axis. Only applied if \code{add=FALSE}.}
  \item{doNotPlot}{If \code{FALSE}, nothing is plotted. This option may be useful if the points along the curve are of interest and only the values returned by \code{portPossCurve} are of interest.}
  \item{\dots}{ If \code{add=FALSE}, additional arguments for \code{\link{plot}}.If \code{add=TRUE}, additional arguments for \code{\link{points}}.}
}
\details{
If the curve is not smooth, first try decreasing the \code{riskRange}. If this is unsuccessful in producing a plot to the detail desired, increase the \code{detail}. Generally it is advisable to attempt to adjust the \code{riskRange} before adjusting \code{detail}.
}
\value{
  \code{portPossCurve} returns a list of the following items:
  \item{R }{ The returns of points along the curve.}
  \item{risk }{ The risk of points along the curve.}
  \item{ports }{ The portfolios corresponding to \code{R} and \code{risk}.}
}
\author{David Diez}
\seealso{\code{\link{stockModel}}, \code{\link{portCloud}}}
\examples{
data(stock94)
sm <- stockModel(stock94, model='SIM', index=25)
portPossCurve(sm, 2)
portCloud(sm, 2.5)
}
