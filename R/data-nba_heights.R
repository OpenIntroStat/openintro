#' NBA Player heights from 2008-9
#'
#' Heights of all NBA players from the 2008-9 season.
#'
#'
#' @name nba_heights
#' @docType data
#' @format A data frame with 435 observations (players) on the following 4
#' variables.
#' \describe{
#'   \item{last_name}{Last name.}
#'   \item{first_name}{First name.}
#'   \item{h_meters}{Height, in meters.}
#'   \item{h_in}{Height, in inches.}
#' }
#' @source Collected from \url{http://www.nba.com}.
#' @keywords datasets
#' @examples
#'
#' qqnorm(nba_heights$h_meters)
#'
"nba_heights"
