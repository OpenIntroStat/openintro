#' manhattan
#'
#' A data frame containing data on apartment rentals in Manhattan.
#'
#' @name manhattan
#' @docType data
#' @format A data frame with 20 observations on the following 1 variable.
#' \describe{
#'   \item{rent}{Monthly rent for a 1 bedroom apartment listed as "For rent by owner".}
#'   }
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(manhattan, aes(rent)) +
#'   geom_histogram(color = "white", binwidth = 300) +
#'   theme_minimal() +
#'   labs(
#'     title = "Rent in Manhattan",
#'     subtitle = "1 Bedroom Apartments",
#'     x = "Rent (in US$)",
#'     caption = "Source: Craigslist"
#'   )
"manhattan"
