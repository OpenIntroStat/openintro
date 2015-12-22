\name{chick.wts}
\alias{chick.wts}
\docType{data}
\title{Chicken weights vs feed type}
\description{Experiment for chick weights and feed type.}
\usage{data("chick.wts")}
\format{
  A data frame with 71 observations on the following 2 variables.
  \describe{
    \item{\code{weight}}{a numeric vector}
    \item{\code{feed}}{a factor with levels \code{casein} \code{horsebean} \code{linseed} \code{meatmeal} \code{soybean} \code{sunflower}}
  }
}
\source{Chicken Weights by Feed Type, from the \code{datasets} package in R.

McNeil, D. R. (1977) Interactive Data Analysis. New York: Wiley.}
\examples{
data(chick.wts)
boxplot(chick.wts$weight ~ chick.wts$feed)
}
\keyword{datasets}
