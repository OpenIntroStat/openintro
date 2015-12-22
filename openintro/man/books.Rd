\name{books}
\alias{books}
\docType{data}
\title{Sample of books on a shelf}
\description{Simulated data set.}
\usage{data("books")}
\format{
  A data frame with 95 observations on the following 2 variables.
  \describe{
    \item{\code{type}}{a factor with levels \code{fiction} \code{nonfiction}}
    \item{\code{format}}{a factor with levels \code{hardcover} \code{paperback}}
  }
}
\examples{
data(books)
table(books)
}
\keyword{datasets}
