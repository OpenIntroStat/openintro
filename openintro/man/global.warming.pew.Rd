\name{global.warming.pew}
\alias{global.warming.pew}
\docType{data}
\title{Pew survey on global warming}
\description{A 2010 Pew Research poll asked 1,306 Americans, ``From what you've read and heard, is there solid evidence that the average temperature on earth has been getting warmer over the past few decades, or not?''}
\usage{data("global.warming.pew")}
\format{
  A data frame with 2253 observations on the following 2 variables.
  \describe{
    \item{\code{party_or_ideology}}{a factor with levels \code{Conservative Republican} \code{Liberal Democrat} \code{Mod/Cons Democrat} \code{Mod/Lib Republican}}
    \item{\code{response}}{Response.}
  }
}
\source{Pew Research Center, Majority of Republicans No Longer See Evidence of Global Warming, data collected on October 27, 2010.}
\examples{
data(global.warming.pew)
## maybe str(global.warming.pew) ; plot(global.warming.pew) ...
}
\keyword{datasets}
