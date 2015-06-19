\name{student.housing}
\alias{student.housing}
\docType{data}
\title{Community college housing (simulated data, 2015)}
\description{These are simulated data and intended to represent housing prices of students at a college.}
\usage{data("student.housing")}
\format{
  A data frame with 175 observations on the following variable.
  \describe{
    \item{\code{price}}{Monthly housing price, simulated.}
  }
}
\examples{
data(student.housing)
set.seed(5)
generate.student.housing <- data.frame(
    price = round(rnorm(175, 515, 65) + exp(rnorm(175, 4.2, 1))))
hist(student.housing$price, 20)
t.test(student.housing$price)
mean(student.housing$price)
sd(student.housing$price)
identical(student.housing, generate.student.housing)

}
\keyword{datasets}
