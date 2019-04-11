#' College credits.
#'
#' A simulated data set of number of credits taken by college students each
#' semester.
#'
#'
#' @name credits
#' @docType data
#' @format A tibble with 100 observations on the following variable.
#' \describe{
#'   \item{credits}{Number of credits.}
#'   }
#' @source Simulated data.
#' @keywords datasets, college credits, inference on means
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(credits, aes(x = credits)) +
#'   geom_histogram(binwidth = 1)
#'
"credits"
