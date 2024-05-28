#' soda
#'
#' A randomly generated dataset of soda preference (cola or orange) based on location.
#'
#' @name soda
#' @docType data
#' @format A data frame with 60 observations on the following 2 variables.
#' \describe{
#'   \item{drink}{Soda preference, cola or orange.}
#'   \item{location}{Is the person from the West coast or East coast?}
#' }
#' @keywords datasets
#' @examples
#'
#' library(dplyr)
#'
#' soda |>
#'   count(location, drink)
"soda"
