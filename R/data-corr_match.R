#' Sample datasets for correlation problems
#'
#' Simulated data.
#'
#'
#' @name corr_match
#' @aliases corr.match corr_match
#' @docType data
#' @format A data frame with 121 observations on the following 9 variables.
#' \describe{
#'   \item{x}{a numeric vector}
#'   \item{y1}{a numeric vector}
#'   \item{y2}{a numeric vector}
#'   \item{y3}{a numeric vector}
#'   \item{y4}{a numeric vector}
#'   \item{y5}{a numeric vector}
#'   \item{y6}{a numeric vector}
#'   \item{y7}{a numeric vector}
#'   \item{y8}{a numeric vector}
#'   }
#' @source Simulated dataset.
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(corr_match, aes(x = x, y = y1)) +
#'   geom_point()
#'
#' cor(corr_match$x, corr_match$y1)
"corr_match"
