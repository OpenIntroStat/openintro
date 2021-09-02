#' Coast Starlight Amtrak train
#'
#' Travel times and distances.
#'
#'
#' @name coast_starlight
#' @aliases coast.starlight coast_starlight
#' @docType data
#' @format A data frame with 16 observations on the following 3 variables.
#' \describe{
#'   \item{station}{Station.}
#'   \item{dist}{Distance.}
#'   \item{travel_time}{Travel time.}
#'   }
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(coast_starlight, aes(x = dist, y = travel_time)) +
#'   geom_point()
"coast_starlight"
