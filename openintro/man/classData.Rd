\name{classData}
\alias{classData}
\docType{data}
\title{
Simulated class data
}
\description{
This data is simulated and is meant to represent students scores from three different lectures who were all given the same exam.
}
\usage{data(classData)}
\format{
  A data frame with 164 observations on the following 2 variables.
  \describe{
    \item{\code{m1}}{Represents a first midterm score.}
    \item{\code{lecture}}{Three classes: \code{a}, \code{b}, and \code{c}.}
  }
}
\references{
OpenIntro Statistics, Chapter 8.
}
\examples{
data(classData)
anova(lm(m1 ~ lecture, classData))
}
\keyword{datasets}
