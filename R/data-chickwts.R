#' Chicken weights vs feed type
#'
#' Experiment for chick weights and feed type.
#'
#'
#' @name chickwts
#' @aliases chick.wts chickwts
#' @docType data
#' @format A tibble with 71 observations on the following 2 variables.
#' \describe{
#'   \item{weight}{a numeric vector}
#'   \item{feed}{a factor with levels \code{casein} \code{horsebean}
#'   \code{linseed} \code{meatmeal} \code{soybean} \code{sunflower}}
#' }
#' @source Chicken Weights by Feed Type, from the \code{datasets} package in R.
#'
#' McNeil, D. R. (1977) Interactive Data Analysis. New York: Wiley.
#' @keywords datasets
#' @examples
#'
#' boxplot(chickwts$weight ~ chickwts$feed)
#'
"chickwts"
