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
#' data(simulated_scatter)
#' these <- simulated_scatter$group == 1
#' plot(simulated_scatter$x[these], simulated_scatter$y[these])
#'
"simulated_scatter"
