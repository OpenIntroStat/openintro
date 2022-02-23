#' New York City Marathon Times (outdated)
#'
#' Marathon times of male and female winners of the New York City Marathon
#' 1970-1999. See [nyc_marathon] for a more updated dataset. We recommend not
#' using this dataset since the data source has been taken off the web.
#'
#' @name marathon
#' @docType data
#' @format A data frame with 60 observations on the following 3 variables.
#' \describe{
#'   \item{year}{Year}
#'   \item{gender}{Gender}
#'   \item{time}{Running time (in hours)}
#'  }
#' @source Data source has been removed.
#' @keywords datasets
#' @examples
#' library(ggplot2)
#'
#' ggplot(marathon, aes(x = time)) +
#'   geom_histogram(binwidth = 0.15)
#'
#' ggplot(marathon, aes(y = time, x = gender)) +
#'   geom_boxplot()
"marathon"
