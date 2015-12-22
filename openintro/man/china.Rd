\name{china}
\alias{china}
\docType{data}
\title{Child care hours}
\description{The China Health and Nutrition Survey aims to examine the effects of the health, nutrition, and family planning policies and programs implemented by national and local governments.}
\usage{data("china")}
\format{
  A data frame with 9788 observations on the following 3 variables.
  \describe{
    \item{\code{gender}}{a numeric vector}
    \item{\code{edu}}{a numeric vector}
    \item{\code{child_care}}{a numeric vector}
  }
}
\source{UNC Carolina Population Center, China Health and Nutrition Survey, 2006.}
\examples{
data(china)
summary(china)
}
\keyword{datasets}
