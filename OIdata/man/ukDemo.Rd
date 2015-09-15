\name{ukDemo}
\alias{ukDemo}
\docType{data}
\title{
United Kingdom Demographic Data
}
\description{
This data set comes from the Guardian's Data Blog and includes five financial demographic variables.
}
\usage{data(ukDemo)}
\format{
  A data frame with 12 observations on the following 6 variables.
  \describe{
    \item{\code{region}}{Region in the United Kingdom}
    \item{\code{debt}}{Average regional debt, not including mortgages, in pounds}
    \item{\code{unemployment}}{Percent unemployment}
    \item{\code{house}}{Average house price, in pounds}
    \item{\code{pay}}{Average hourly pay, in pounds}
    \item{\code{rpi}}{Retail price index, which is standardized to 100 for the entire UK, and lower index scores correspond to lower prices}
  }
}
\source{
The data was described in the Guardian Data Blog:

\url{http://www.guardian.co.uk/news/datablog/interactive/2011/oct/27/debt-money-expert-facts}

Posted: Thursday, October 27, 2011

Retrieved: Tuesday, November 1, 2011
}
\references{
Guardian Data Blog
}
\examples{
data(ukDemo)
plot(ukDemo$pay, ukDemo$rpi)
}
\keyword{datasets}
