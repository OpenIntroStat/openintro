\name{student.sleep}
\alias{student.sleep}
\docType{data}
\title{Sleep for 110 students (simulated)}
\description{A simulated data set for how much 110 college students each slept in a single night.}
\usage{data("student.sleep")}
\format{
  A data frame with 110 observations on the following variable.
  \describe{
    \item{\code{hours}}{Number of hours slept by this student (simulated).}
  }
}
\source{Simulated data.}
\examples{
data(student.sleep)

set.seed(2)
x <- exp(c(rnorm(100, log(7.5), 0.15),
           rnorm(10, log(10), 0.196)))
x <- round(x - mean(x) + 7.42, 2)

identical(x, student.sleep$hours)
}
\keyword{datasets}
