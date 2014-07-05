\name{myPDF}
\alias{myPDF}
\alias{myPNG}
\title{
Custom PDF function
}
\description{
A similar function to \code{pdf} and \code{png}, except that different defaults are provided, including for the plotting parameters.
}
\usage{
myPDF(fileName, width = 5, height = 3,
      mar = c(3.9, 3.9, 1, 1), 
      mgp = c(2.8, 0.55, 0),
      las = 1, tcl=-0.3, ...)

myPNG(fileName, width = 600, height = 400,
      mar = c(3.9, 3.9, 1, 1), 
      mgp = c(2.8, 0.55, 0),
      las = 1, tcl=-0.3, ...)
}
\arguments{
  \item{fileName}{ File name for the image to be output. The name should end in \code{.pdf}. }
  \item{width}{ The width of the image file (inches). Default: \code{5}. }
  \item{height}{ The height of the image file (inches). Default: \code{3}. }
  \item{mar}{ Plotting margins. To change, input a numerical vector of length 4. }
  \item{mgp}{ Margin graphing parameters. To change, input a numerical vector of length 3. The first argument specifies where x and y labels are placed; the second specifies the axis labels are placed; and the third specifies how far to pull the entire axis from the plot. }
  \item{las}{ Orientation of axis labels. Input \code{0} for the default. }
  \item{tcl}{ The tick mark length as a proportion of text height. The default is \code{-0.5}. }
  \item{\dots}{ Additional arguments to \code{par}. }
}
\author{
David M Diez
}
\seealso{
\code{\link{edaPlot}}
}
\examples{
data(marioKart)
#=====> Save a plot to a PDF <=====#
# myPDF("myPlot.pdf")
data(run10)
histPlot(run10$time)
# dev.off()

#=====> Save a plot to a PNG <=====#
# myPNG("myPlot.pdf")
data(run10)
histPlot(run10$time)
# dev.off()
}
\keyword{ PDF }
\keyword{ Plotting }
\keyword{ Save }
\keyword{ Graphics }
\keyword{ myPDF }
