\name{playing_cards}
\alias{playing_cards}
\docType{data}
\title{
  Table of Playing Cards in 52-Card Deck
}
\description{
  A table describing each of the 52 cards in a deck.
}
\usage{data("playing_cards")}
\format{
  A data frame with 52 observations on the following 2 variables.
  \describe{
    \item{\code{number}}{The number or card type.}
    \item{\code{suit}}{Card suit, which takes one of four values:
    	    \code{Club}, \code{Diamond}, \code{Heart}, or \code{Spade}.}
    \item{\code{face_card}}{Whether the card counts as a face card.}
  }
}
\source{
  This extremely complex data set was generated from scratch.
}
\examples{
playing_cards <- data.frame(
    number = rep(c(2:10, "J", "Q", "K", "A"), 4),
    suit = rep(c("Spade", "Diamond", "Club", "Heart"), rep(13, 4)))
playing_cards$face_card <-
    ifelse(playing_cards$number \%in\% c(2:10, "A"), "no", "yes")
}
\keyword{datasets}
