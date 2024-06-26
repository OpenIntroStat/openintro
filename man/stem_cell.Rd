% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-stem_cell.R
\docType{data}
\name{stem_cell}
\alias{stem_cell}
\title{Embryonic stem cells to treat heart attack (in sheep)}
\format{
A data frame with 18 observations on the following 3 variables.
\describe{
\item{trmt}{a factor with levels \code{ctrl} \code{esc}}
\item{before}{a numeric vector}
\item{after}{a numeric vector}
}
}
\source{
\doi{10.1016/S0140-6736(05)67380-1}
}
\usage{
stem_cell
}
\description{
Does treatment using embryonic stem cells (ESCs) help improve heart function
following a heart attack? Each sheep in the study was randomly assigned to
the ESC or control group, and the change in their hearts' pumping capacity
was measured in the study. A positive value corresponds to increased pumping
capacity, which generally suggests a stronger recovery.
}
\examples{

stem_cell
}
\keyword{datasets}
