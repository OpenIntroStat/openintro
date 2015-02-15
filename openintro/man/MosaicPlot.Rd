\name{MosaicPlot}
\alias{MosaicPlot}
\title{Custom Mosaic Plot}
\description{
  Plot a mosaic plot custom built for a particular figure.
}
\usage{
MosaicPlot(formula, data, col = "#00000022", border = 1,
           dir = c("v", "h"), off = 0.01, cex.axis = 0.7,
           col.dir = "v", flip = c("v"), ...)
}
\arguments{
  \item{formula}{Formula describing the variable relationship.}
  \item{data}{Data frame for the variables, optional.}
  \item{col}{Colors for plotting.}
  \item{border}{Ignored.}
  \item{dir}{Ignored.}
  \item{off}{Fraction of white space between each box in
  	    the plot.}
  \item{cex.axis}{Axis label size.}
  \item{col.dir}{Direction to lay out colors.}
  \item{flip}{Whether to flip the ordering of the
  	    vertical (\code{"v"}) and/or horizontal (\code{"h"})
  	    ordering in the plot.}
  \item{\dots}{Ignored.}
}
\author{David Diez (david@openintro.org)}
\examples{
data(email)
data(COL)
email$spam <- ifelse(email$spam == 0, "not\nspam", "spam")
par(las = 1)
MosaicPlot(number ~ spam, email, col = COL[1:3], off = 0.02)
}
