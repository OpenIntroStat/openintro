\name{offshore.drilling}
\alias{offshore.drilling}
\docType{data}
\title{California poll on drilling off the California coast}
\description{A 2010 survey asking a randomly sample of registered voters in California for their position on drilling for oil and natural gas off the Coast of California.}
\usage{data("offshore.drilling")}
\format{
  A data frame with 827 observations on the following 2 variables.
  \describe{
    \item{\code{position}}{a factor with levels \code{do not know} \code{oppose} \code{support}}
    \item{\code{college_grad}}{a factor with levels \code{no} \code{yes}}
  }
}
\source{Survey USA, Election Poll #16804, data collected July 8-11, 2010.}
\examples{
data(offshore.drilling)
## maybe str(offshore.drilling) ; plot(offshore.drilling) ...
}
\keyword{datasets}