#' New York City Marathon Times
#'
#' Marathon times of runners in the Men and Women divisions of the New York
#' City Marathon, 1970 - 2023.
#'
#' @name nyc_marathon
#' @docType data
#' @format A data frame with 108 observations on the following 7 variables.
#' \describe{
#'   \item{year}{Year of marathom.}
#'   \item{name}{Name of winner.}
#'   \item{country}{Country of winner.}
#'   \item{time}{Running time (HH:MM:SS).}
#'   \item{time_hrs}{Running time (in hours).}
#'   \item{division}{Division: `Men` or `Women`.}
#'   \item{note}{Note about the race or the winning time.}
#'  }
#' @source Wikipedia, [List of winners of the New York City Marathon](https://en.wikipedia.org/wiki/List_of_winners_of_the_New_York_City_Marathon). Retrieved 6 November, 2023.
#' @keywords datasets
#' @examples
#' library(ggplot2)
#'
#' ggplot(nyc_marathon, aes(x = year, y = time_hrs, color = division, shape = division)) +
#'   geom_point()
"nyc_marathon"
