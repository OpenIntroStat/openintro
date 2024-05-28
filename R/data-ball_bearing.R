#' Lifespan of ball bearings
#'
#' A simulated dataset on lifespan of ball bearings.
#'
#'
#' @name ball_bearing
#' @aliases ball.bearing ball_bearing ballBearing
#' @docType data
#' @format A data frame with 75 observations on the following variable.
#' \describe{
#'   \item{life_span}{Lifespan of ball bearings (in hours).}
#'   }
#' @source Simulated data.
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(ball_bearing, aes(x = life_span)) +
#'   geom_histogram(binwidth = 1)
#'
#' qqnorm(ball_bearing$life_span)
"ball_bearing"
