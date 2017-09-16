\name{major.survey}
\alias{major.survey}
\alias{major_survey}
\docType{data}
\title{
  Survey of Duke students and the area of their major
}
\description{
  Survey of 218 students, collecting information
  on their GPAs and their academic major.
}
\usage{data("major.survey")}
\format{
  A data frame with 218 observations on the following 2 variables.
  \describe{
    \item{\code{gpa}}{Grade point average (GPA).}
    \item{\code{major}}{Area of academic major.}
  }
}
\examples{
data(major.survey)
plot(major.survey$major, major.survey$gpa)
}
\keyword{datasets}
