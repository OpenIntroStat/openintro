#' College credits.
#'
#' A simulated data set of number of credits taken by college students each
#' semester.
#'
#'
#' @name credits
#' @docType data
#' @format A data frame with 100 observations on the following variable.
#' \describe{
#'   \item{credits}{Number of credits.}
#'   }
#' @source Simulated data.
#' @keywords datasets college credits
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(credits, aes(x = credits)) +
#'   geom_histogram(binwidth = 1)
"credits"
