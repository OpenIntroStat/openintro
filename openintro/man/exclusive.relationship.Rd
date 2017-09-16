\name{exclusive.relationship}
\alias{exclusive.relationship}
\alias{exclusive_relationship}
\docType{data}
\title{
  Number of Exclusive Relationships
}
\description{
  A survey conducted on a reasonably random sample of
  203 undergraduates asked, among many other questions,
  about the number of exclusive relationships these students
  have been in.
}
\usage{data("exclusive.relationship")}
\format{
  A data frame with 218 observations on the following variable.
  \describe{
    \item{\code{num}}{Number of exclusive relationships.}
  }
}
\examples{
data(exclusive.relationship)
summary(exclusive.relationship$num)
table(exclusive.relationship$num)
hist(exclusive.relationship$num)
}
\keyword{datasets}
