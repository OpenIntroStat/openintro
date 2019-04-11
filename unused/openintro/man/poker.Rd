\name{poker}
\alias{poker}
\docType{data}
\title{ Poker winnings during 50 sessions }
\description{
  Poker winnings (and losses) for 50 days by a professional
  poker player, which represents their first 50 days trying
  to play for a living.
}
\usage{data(poker)}
\format{
  A data frame with 49 observations on the following variable.
  \describe{
    \item{\code{winnings}}{Poker winnings and losses, in US dollars.}
  }
}
\source{ Anonymity has been requested by the player. }
\references{
  OpenIntro Statistics, \url{http://www.openintro.org}
}
\examples{
data(poker)
histPlot(poker$winnings)
}
\keyword{datasets}
