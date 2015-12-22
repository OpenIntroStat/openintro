\name{bac}
\alias{bac}
\docType{data}
\title{Beer and blood alcohol content}
\description{Here we examine data from sixteen student volunteers at Ohio State University who each drank a randomly assigned number of cans of beer.}
\usage{data("bac")}
\format{
  A data frame with 16 observations on the following 3 variables.
  \describe{
    \item{\code{Student}}{a numeric vector}
    \item{\code{Beers}}{a numeric vector}
    \item{\code{BAC}}{a numeric vector}
  }
}
\source{J. Malkevitch and L.M. Lesser. For All Practical Purposes: Mathematical Literacy in Today's World. WH Freeman & Co, 2008.}
\examples{
data(bac)
plot(bac$Beers, bac$BAC)
}
\keyword{datasets}
