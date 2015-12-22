\name{tourism}
\alias{tourism}
\docType{data}
\title{Turkey tourism}
\description{Summary of tourism in Turkey.}
\usage{data("tourism")}
\format{
  A data frame with 47 observations on the following 3 variables.
  \describe{
    \item{\code{year}}{a numeric vector}
    \item{\code{visitor_count_tho}}{a numeric vector}
    \item{\code{tourist_spending}}{a numeric vector}
  }
}
\source{Association of Turkish Travel Agencies, Foreign Visitors Figure & Tourist Spendings By Years. http://www.tursab.org.tr/en/statistics/foreign-visitors-figure-tourist-spendings-by-years_1083.html}
\examples{
data(tourism)
## maybe str(tourism) ; plot(tourism) ...
}
\keyword{datasets}