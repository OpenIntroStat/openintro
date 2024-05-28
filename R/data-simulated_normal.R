#' Simulated datasets, drawn from a normal distribution.
#'
#' Data were simulated using \code{\link{rnorm}}.
#'
#'
#' @name simulated_normal
#' @docType data
#' @format The format is: List of 3 $ n40 : 40 observations from a standard
#' normal distribution.  $ n100: 100 observations from a standard normal
#' distribution.  $ n400: 400 observations from a standard normal distribution.
#' @keywords datasets
#' @examples
#'
#' data(simulated_normal)
#' lapply(simulated_normal, qqnorm)
"simulated_normal"
