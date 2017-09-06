\name{edaPlot}
\alias{edaPlot}
\alias{createEdaOptions}
\alias{guessMethod}
\alias{plotNothing}
\alias{fitNormal}
\alias{makePlotIcon}
\title{ Exploratory data analysis plot }
\description{
Explore different plotting methods using a click interface.
}
\usage{
edaPlot(dataFrame, Col=c('#888888', '#FF0000', '#222222',
                         '#FFFFFF', '#CCCCCC', '#3377AA'))
}
\arguments{
  \item{dataFrame}{ A data frame. }
  \item{Col}{ A vector containing six colors. The colors may be given in any form. }
}
%\details{
%  Below is a screen-capture image of the interface for
%  \code{edaPlot} using the second data set in the examples
%  below. Red is used to highlight the two active variables
%  and plotting type.
%
%  %\figure{edaPlotMarioKart.png}{EDA Plot for Mario Kart data}
%}
\author{David Diez}
\seealso{ \code{\link{histPlot}}, \code{\link{densityPlot}}, \code{\link{boxPlot}}, \code{\link{dotPlot}} }
\examples{
data(mlbBat10)
bat <- mlbBat10[mlbBat10$AB > 200,]
#edaPlot(bat)

data(marioKart)
mk <- marioKart[marioKart$totalPr < 100,]
#edaPlot(mk)
}
