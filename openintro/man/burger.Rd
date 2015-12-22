\name{burger}
\alias{burger}
\docType{data}
\title{Burger preferences}
\description{Sample burger place preferences versus gender.}
\usage{data("burger")}
\format{
  A data frame with 500 observations on the following 2 variables.
  \describe{
    \item{\code{best_burger_place}}{Burger place.}
    \item{\code{gender}}{a factor with levels \code{Female} \code{Male}}
  }
}
\source{SurveyUSA, Results of SurveyUSA News Poll #17718, data collected on December 2, 2010.}
\examples{
data(burger)
table(burger)
}
\keyword{datasets}
