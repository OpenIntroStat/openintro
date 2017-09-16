\name{absenteeism}
\alias{absenteeism}
\docType{data}
\title{
  Absenteeism
}
\description{
  Researchers interested in the relationship between absenteeism
  from school and certain demographic characteristics of children
  collected data from 146 randomly sam- pled students in rural
  New South Wales, Australia, in a particular school year. 

}
\usage{data("absenteeism")}
\format{
  A data frame with 146 observations on the following 5 variables.
  \describe{
    \item{\code{Eth}}{
      Ethnicity, representing Aboriginal (\code{A}) or not (\code{N}).
    }
    \item{\code{Sex}}{Gender.}
    \item{\code{Age}}{Age bucket.}
    \item{\code{Lrn}}{
      Learner status, with average learner (\code{AL}) and slow learner (\code{SL}).
    }
    \item{\code{Days}}{Number of days absent.}
  }
}
\source{
  Venables WN, Ripley BD. 2002. Modern Applied Statistics with S. Fourth Edition. New York: Springer.

   Data can also be found in the R \code{MASS} package under the data set name \code{quine}.
}
\examples{
data(absenteeism)
head(absenteeism)
}
\keyword{datasets}
