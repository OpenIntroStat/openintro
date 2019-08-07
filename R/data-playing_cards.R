#' Table of Playing Cards in 52-Card Deck
#'
#' A table describing each of the 52 cards in a deck.
#'
#'
#' @name playing_cards
#' @docType data
#' @format A data frame with 52 observations on the following 2 variables.
#' \describe{
#'   \item{number}{The number or card type.}
#'   \item{suit}{Card suit, which takes one of four values: \code{Club}, \code{Diamond}, \code{Heart}, or \code{Spade}.}
#'   \item{face_card}{Whether the card counts as a face card.}
#' }
#' @source This extremely complex data set was generated from scratch.
#' @keywords datasets
#' @examples
#'
#' playing_cards <- data.frame(
#'     number = rep(c(2:10, "J", "Q", "K", "A"), 4),
#'     suit = rep(c("Spade", "Diamond", "Club", "Heart"), rep(13, 4)))
#' playing_cards$face_card <-
#'     ifelse(playing_cards$number %in% c(2:10, "A"), "no", "yes")
#'
"playing_cards"
