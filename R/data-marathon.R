#' New York City Marathon Times
#'
#' Marathon times of male and female winners of the New York City Marathon
#' 1970-1999.
#'
#'
#' @name marathon
#' @docType data
#' @format A data frame with 60 observations on the following 3 variables.
#' \describe{
#'   \item{year}{Year}
#'   \item{gender}{Gender}
#'   \item{time}{Running time (in hours)}
#'  }
#' @source \url{https://www.webcitation.org/5kx7ilFLp}
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(marathon, aes(x = time)) +
#'   geom_histogram(binwidth = 0.15)
#'
#' ggplot(marathon, aes(y = time, x = gender)) +
#'   geom_boxplot()
#'
"marathon"
