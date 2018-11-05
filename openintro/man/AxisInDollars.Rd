\name{AxisInDollars}
\alias{AxisInDollars}
\alias{AxisInPercent}
\title{
  Build Better Looking Axis Labels for US Dollars and Percentages
}
\description{
  Convert and simplify axis labels that are in US dollars or percentages.
}
\usage{
AxisInDollars(side, at, include.symbol = TRUE, simplify = TRUE, ...)
AxisInPercent(side, at, include.symbol = TRUE, simplify = TRUE, ...)
}
\arguments{
  \item{side}{
    An integer specifying which side of the
    plot the axis is to be drawn on. The axis is placed
    as follows: 1=below, 2=left, 3=above and 4=right.
  }
  \item{at}{The points at which tick-marks are to be drawn.}
  \item{include.symbol}{
    Whether to include a dollar or percent symbol,
    where the symbol chosen depends on the function.
  }
  \item{simplify}{
    For dollars, simplify the amount to use abbreviations of
    \code{"k"}, \code{"m"}, \code{"b"}, or \code{"t"}
    when numbers tend to be in the
    thousands, millions, billions, or trillions, respectively.
  }
  \item{\dots}{Arguments passed to \code{\link{axis}}.}
}
\value{
  The numeric locations on the axis scale at which
  tick marks were drawn when the plot was first drawn.
}
\author{David Diez}
\seealso{
  \code{\link{buildAxis}}
}
\examples{
x <- sample(50e6, 100)
hist(x, axes = FALSE)
AxisInDollars(1, pretty(x))
}
