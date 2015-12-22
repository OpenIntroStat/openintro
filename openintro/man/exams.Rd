\name{exams}
\alias{exams}
\docType{data}
\title{Exam scores}
\description{Exam scores from a class of 19 students.}
\usage{data("exams")}
\format{
  A data frame with 19 observations on the following variable.
  \describe{
    \item{\code{scores}}{a numeric vector}
  }
}
\examples{
data(exams)
hist(exams$scores)
}
\keyword{datasets}
