\name{gpa}
\alias{gpa}
\docType{data}
\title{Survey of Duke students on GPA, studying, and more}
\description{A survey of 55 Duke University students asked about their GPA, number of hours they study at night, number of nights they go out, and their gender.}
\usage{data("gpa")}
\format{
  A data frame with 55 observations on the following 5 variables.
  \describe{
    \item{\code{gpa}}{a numeric vector}
    \item{\code{studyweek}}{a numeric vector}
    \item{\code{sleepnight}}{a numeric vector}
    \item{\code{out}}{a numeric vector}
    \item{\code{gender}}{a factor with levels \code{female} \code{male}}
  }
}
\examples{
data(gpa)
## maybe str(gpa) ; plot(gpa) ...
}
\keyword{datasets}
