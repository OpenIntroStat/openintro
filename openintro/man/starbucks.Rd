\name{starbucks}
\alias{starbucks}
\docType{data}
\title{Starbucks nutrition}
\description{Nutrition facts for several Starbucks food items}
\usage{data("starbucks")}
\format{
  A data frame with 77 observations on the following 7 variables.
  \describe{
    \item{\code{item}}{Food item.}
    \item{\code{calories}}{Calories.}
    \item{\code{fat}}{a numeric vector}
    \item{\code{carb}}{a numeric vector}
    \item{\code{fiber}}{a numeric vector}
    \item{\code{protein}}{a numeric vector}
    \item{\code{type}}{a factor with levels \code{bakery} \code{bistro box} \code{hot breakfast} \code{parfait} \code{petite} \code{salad} \code{sandwich}}
  }
}
\source{http://www.starbucks.com/menu/nutrition (March 10, 2011)}
\examples{
data(starbucks)
## maybe str(starbucks) ; plot(starbucks) ...
}
\keyword{datasets}