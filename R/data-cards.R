#' Deck of cards
#'
#' All the cards in a standard deck.
#'
#'
#' @name cards
#' @docType data
#' @format A data frame with 52 observations on the following 4 variables.
#' \describe{
#'   \item{value}{a factor with levels \code{10} \code{2} \code{3} \code{4}
#'   \code{5} \code{6} \code{7} \code{8} \code{9} \code{A} \code{J} \code{K}
#'   \code{Q}}
#'   \item{color}{a factor with levels \code{black} \code{red}}
#'   \item{suit}{a factor with levels \code{Club} \code{Diamond} \code{Heart} \code{Spade}}
#'   \item{face}{a logical vector}
#' }
#' @keywords datasets
#' @examples
#'
#' table(cards$value)
#' table(cards$color)
#' table(cards$suit)
#' table(cards$face)
#' table(cards$suit, cards$face)
"cards"
