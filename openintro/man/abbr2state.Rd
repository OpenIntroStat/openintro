\name{abbr2state}
\alias{abbr2state}
\alias{state2abbr}
\title{ Convert state names to abbreviations and back again }
\description{ Two utility functions. One converts state names to the state abbreviations, and the second does the opposite. }
\usage{
abbr2state(abbr)

state2abbr(state)
}
\arguments{
  \item{state}{ A vector of state name, where there is a little fuzzy matching. }
  \item{abbr}{ A vector of state abbreviation. }
}
\value{ Returns a vector of the same length with the corresponding state names or abbreviations. }
\author{ David Diez }
\seealso{
\code{\link{county}}, \code{\link{countyComplete}}
}
\examples{
state2abbr("Minnesota")
abbr2state("MN")

#_____ Some Spelling/Capitalization Errors Okay _____#
state2abbr("mINnesta")
}
\keyword{ State }
\keyword{ Abbreviation }
