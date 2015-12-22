\name{drug.use}
\alias{drug.use}
\docType{data}
\title{Drug use of students and parents}
\description{Summary of 445 student-parent pairs.}
\usage{data("drug.use")}
\format{
  A data frame with 445 observations on the following 2 variables.
  \describe{
    \item{\code{student}}{a factor with levels \code{not} \code{uses}}
    \item{\code{parents}}{a factor with levels \code{not} \code{used}}
  }
}
\source{Ellis GJ and Stone LH. 1979. Marijuana Use in College: An Evaluation of a Modeling Explanation. Youth and Society 10:323-334.}
\examples{
data(drug.use)
table(drug.use)
}
\keyword{datasets}
