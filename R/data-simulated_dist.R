#' Simulated data sets, not necessarily drawn from a normal distribution.
#'
#' Data were simulated in R, and some of the simulations do not represent data
#' from actual normal distributions.
#'
#'
#' @name simulated_dist
#' @docType data
#' @format The format is: List of 4 $ d1: data set of 100 observations.  $ d2:
#' data set of 50 observations.  $ d3: num data set of 500 observations.  $ d4:
#' data set of 15 observations.  $ d5: num data set of 25 observations.  $ d6:
#' data set of 50 observations.
#' @keywords datasets
#' @examples
#'
#' data(simulated_dist)
#' par(mfrow = c(3, 2))
#' lapply(simulated_dist, qqnorm)
#'
"simulated_dist"
