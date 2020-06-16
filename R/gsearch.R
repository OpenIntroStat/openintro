#' Simulated Google search experiment
#'
#' The data were simulated to look like sample results from a Google search
#' experiment.
#'
#'
#' @name gsearch
#' @docType data
#' @format A data frame with 10000 observations on the following 2 variables.
#' \describe{
#'   \item{type}{a factor with levels \code{new search} \code{no new search}}
#'   \item{outcome}{a factor with levels \code{current} \code{test 1} \code{test 2}}
#'   }
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' table(gsearch$type, gsearch$outcome)
#'
#' ggplot(gsearch, aes(x = type, fill = outcome)) +
#'   geom_bar(position = "fill") +
#'   labs(y = "proportion")
#'
"gsearch"
