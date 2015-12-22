\name{stem.cell}
\alias{stem.cell}
\docType{data}
\title{Embryonic stem cells to treat heart attack (in sheep)}
\description{Does treatment using embryonic stem cells (ESCs) help improve heart function following a heart attack? Each sheep in the study was randomly assigned to the ESC or control group, and the change in their hearts' pumping capacity was measured in the study. A positive value corresponds to increased pumping capacity, which generally suggests a stronger recovery.}
\usage{data("stem.cell")}
\format{
  A data frame with 18 observations on the following 3 variables.
  \describe{
    \item{\code{trmt}}{a factor with levels \code{ctrl} \code{esc}}
    \item{\code{before}}{a numeric vector}
    \item{\code{after}}{a numeric vector}
  }
}
\source{http://www.thelancet.com/journals/lancet/article/PIIS0140-6736(05)67380-1/abstract}
\examples{
data(stem.cell)
## maybe str(stem.cell) ; plot(stem.cell) ...
}
\keyword{datasets}