\name{portCloud}
\alias{portCloud}
\title{Plot a portfolio cloud}
\description{
Given a model with short-selling permitted, \code{portCloud} plots a cloud of possible portfolios.
}
\usage{
portCloud(model, riskRange = 2, detail = 25, N = 3000, add = TRUE,
   col = c("#55550044"), pch = 20, subSamp = 1000, xlim = "default",
   ylim = "default", xlab = "Risk", ylab = "Return", ...)
}
\arguments{
  \item{model}{ An object of class \code{"stockModel"}.}
  \item{riskRange}{ A factor to specify how large you would like the portfolio cloud to be. If \code{X} is the portfolio with minimum risk, then the portfolio cloud will look aesthetically best to approximately risk of \code{riskRange*X}.}
  \item{detail}{ A parameter that adjusts the appearance of the portfolio cloud. The default value is often adequate.}
  \item{N}{ A parameter for the number of portfolios to consider.}
  \item{add}{ If \code{TRUE}, then the points are added to the plot. If \code{FALSE}, a new plot is created.}
  \item{col}{ Color of the portfolios in the plot.}
  \item{pch}{ Plotting character of the portfolios.}
  \item{subSamp}{ The maximum number of portfolios to plot.}
  \item{xlim}{ Limits for the x axis. Only applied if \code{add=FALSE}.}
  \item{ylim}{ Limits for the y axis. Only applied if \code{add=FALSE}.}
  \item{xlab}{ Label for the x axis. Only applied if \code{add=FALSE}.}
  \item{ylab}{ Label for the y axis. Only applied if \code{add=FALSE}.}
  \item{\dots}{ If \code{add=FALSE}, additional arguments for \code{plot}. If \code{add=TRUE}, additional arguments for \code{points}.}
}
\details{
Which portfolios are actually plotted is dependent on the portfolio possibilities curve. A number of points along the curve, specified by \code{detail} and the stocks themselves are used to produce a relatively uniform looking portfolio cloud.
}
\value{
  A list of the following items:
  \item{ports }{ The portfolios plotted.}
  \item{R }{ The estimated return associated with each row of \code{ports}.}
  \item{risk }{ The estimated risk associated with each row of \code{ports}.}
}
\author{David Diez and Nicolas Christou}
\seealso{\code{\link{stockModel}}, \code{\link{portPossCurve}}}
\examples{
data(stock94)
sm <- stockModel(stock94, model='SIM', index=25)
portCloud(sm, add=FALSE)
portPossCurve(sm, 2.5, add=TRUE)
}
