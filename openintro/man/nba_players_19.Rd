\name{nba_players_19}
\alias{nba_players_19}
\docType{data}
\title{NBA Players for the 2018-2019 season}
\description{
  Summary information from the NBA players for the 2018-2019 season.
}
\usage{data("nba_players_19")}
\format{
  A data frame with 494 observations on the following 7 variables.
  \describe{
    \item{\code{first_name}}{First name.}
    \item{\code{last_name}}{Last name.}
    \item{\code{team}}{Team name}
    \item{\code{team_abbr}}{3-letter team abbreviation.}
    \item{\code{position}}{Player position.}
    \item{\code{number}}{Jersey number.}
    \item{\code{height}}{Height, in inches.}
  }
}
\source{
  \url{http://www.nba.com/players}
}
\examples{
hist(nba_players_19$height, 20)
table(nba_players_19$team)
}
\keyword{datasets}
