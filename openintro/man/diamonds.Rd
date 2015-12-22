\name{diamonds}
\alias{diamonds}
\docType{data}
\title{Information on diamond prices}
\description{Summaries of nearly 54k diamonds.}
\usage{data("diamonds")}
\format{
  A data frame with 53940 observations on the following 10 variables.
  \describe{
    \item{\code{carat}}{a numeric vector}
    \item{\code{cut}}{a factor with levels \code{Fair} \code{Good} \code{Ideal} \code{Premium} \code{Very Good}}
    \item{\code{color}}{a factor with levels \code{D} \code{E} \code{F} \code{G} \code{H} \code{I} \code{J}}
    \item{\code{clarity}}{a factor with levels \code{I1} \code{IF} \code{SI1} \code{SI2} \code{VS1} \code{VS2} \code{VVS1} \code{VVS2}}
    \item{\code{depth}}{a numeric vector}
    \item{\code{table}}{a numeric vector}
    \item{\code{price}}{a numeric vector}
    \item{\code{x}}{a numeric vector}
    \item{\code{y}}{a numeric vector}
    \item{\code{z}}{a numeric vector}
  }
}
\source{H. Wickham. ggplot2: elegant graphics for data analysis. Springer New York, 2009.}
\examples{
data(diamonds)
}
\keyword{datasets}
