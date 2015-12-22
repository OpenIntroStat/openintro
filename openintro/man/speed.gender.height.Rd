\name{speed.gender.height}
\alias{speed.gender.height}
\docType{data}
\title{Speed, gender, and height of 1302 students}
\description{1,302 UCLA students were asked to fill out a survey where they were asked about their height, fastest speed they have ever driven, and gender.}
\usage{data("speed.gender.height")}
\format{
  A data frame with 1325 observations on the following 4 variables.
  \describe{
    \item{\code{X}}{a numeric vector}
    \item{\code{speed}}{a numeric vector}
    \item{\code{gender}}{a factor with levels \code{female} \code{male}}
    \item{\code{height}}{a numeric vector}
  }
}
\examples{
data(speed.gender.height)
## maybe str(speed.gender.height) ; plot(speed.gender.height) ...
}
\keyword{datasets}