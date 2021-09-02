#' Poker winnings during 50 sessions
#'
#' Poker winnings (and losses) for 50 days by a professional poker player.
#'
#'
#' @name poker
#' @docType data
#' @format A data frame with 49 observations on the following variable.
#' \describe{
#'   \item{winnings}{Poker winnings and losses, in US dollars.}
#'   }
#' @source Anonymity has been requested by the player.
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(poker, aes(x = winnings)) +
#'   geom_histogram(binwidth = 250)
"poker"
