#' NBA Players for the 2018-2019 season
#'
#' Summary information from the NBA players for the 2018-2019 season.
#'
#'
#' @name nba_players_19
#' @docType data
#' @format A data frame with 494 observations on the following 7 variables.
#' \describe{
#'   \item{first_name}{First name.}
#'   \item{last_name}{Last name.}
#'   \item{team}{Team name}
#'   \item{team_abbr}{3-letter team abbreviation.}
#'   \item{position}{Player position.}
#'   \item{number}{Jersey number.}
#'   \item{height}{Height, in inches.}
#' }
#' @source \url{https://www.nba.com/players}
#' @keywords datasets
#' @examples
#'
#' hist(nba_players_19$height, 20)
#' table(nba_players_19$team)
"nba_players_19"
