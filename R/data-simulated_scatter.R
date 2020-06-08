#' Simulated data for sample scatterplots
#'
#' Fake data.
#'
#'
#' @name simulated_scatter
#' @docType data
#' @format A data frame with 500 observations on the following 3 variables.
#' \describe{
#'   \item{group}{Group, representing data for a specific plot.}
#'   \item{x}{x-value.}
#'   \item{y}{y-value.}
#' }
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(simulated_scatter, aes(x = x, y = y)) +
#'   geom_point() +
#'   facet_wrap(~group)
#'
"simulated_scatter"
