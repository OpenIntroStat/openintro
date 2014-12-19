\name{ChiSquareTail}
\alias{ChiSquareTail}
\title{Plot upper tail in chi-square distribution}
\description{
  Plot a chi-square distribution and shade the upper tail.
}
\usage{
ChiSquareTail(U, df, xlim = c(0, 10), axes = TRUE,
              col = fadeColor("black", "22"), ...)
}
\arguments{
  \item{U}{Cut off for the upper tail.}
  \item{df}{Degrees of freedom.}
  \item{xlim}{Limits for the plot.}
  \item{col}{Color of the shading.}
  \item{axes}{Whether to plot an x-axis.}
  \item{\dots}{Currently ignored.}
}
\value{Nothing is returned from the function.}
\author{David Diez}
\seealso{
  \code{\link{normTail}}
}
\examples{
data(COL)
ChiSquareTail(11.7,
              7,
              c(0, 25),
              col = COL[1])
}
