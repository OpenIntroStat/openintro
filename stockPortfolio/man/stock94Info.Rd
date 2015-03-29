\name{stock94Info}
\alias{stock94Info}
\docType{data}
\title{Ticker and industry information}
\description{
A data frame showing the industries of each of the stocks given in \code{\link{stock94}}, \code{\link{stock99}}, and \code{\link{stock04}}.
}
\usage{data(stock94Info)}
\format{
  A data frame with 25 observations with two columns: ticker and industry.
}
\source{
Yahoo Finance.
}
\seealso{
\code{\link{stock94}}, \code{\link{stock99}}, \code{\link{stock04}}
}
\examples{
data(stock94Info)
data(stock04)
sm <- stockModel(stock04, model='SIM', index=25,
                 industry=stock94Info$industry)
}
\keyword{datasets}
