\name{iris}
\alias{iris}
\docType{data}
\title{Iris data (flowers)}
\description{Classical data set from R.A. Fisher.}
\usage{data("iris")}
\format{
  A data frame with 150 observations on the following 5 variables.
  \describe{
    \item{\code{Sepal.Length}}{a numeric vector}
    \item{\code{Sepal.Width}}{a numeric vector}
    \item{\code{Petal.Length}}{a numeric vector}
    \item{\code{Petal.Width}}{a numeric vector}
    \item{\code{Species}}{a factor with levels \code{setosa} \code{versicolor} \code{virginica}}
  }
}
\source{R.A Fisher. The Use of Multiple Measurements in Taxonomic Problems. In: Annals of Eugenics 7 (1936), pp. 179-188.
}
\examples{
data(iris)
## maybe str(iris) ; plot(iris) ...
}
\keyword{datasets}