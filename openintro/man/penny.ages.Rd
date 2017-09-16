\name{penny.ages}
\alias{penny.ages}
\alias{penny_ages}
\docType{data}
\title{
  Penny Ages
}
\description{
  Sample of pennies and their ages. Taken in 2004.
}
\usage{data("penny.ages")}
\format{
  A data frame with 648 observations on the following 2 variables.
  \describe{
    \item{\code{Year}}{Penny's year.}
    \item{\code{age}}{Age as of 2004.}
  }
}
\examples{
data(penny.ages)
hist(penny.ages$Year)
}
\keyword{datasets}
