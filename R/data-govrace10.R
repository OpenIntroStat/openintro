#' Election results for 2010 Governor races in the U.S.
#'
#' Election results for 2010 Governor races in the U.S.
#'
#'
#' @name govrace10
#' @docType data
#' @format A data frame with 37 observations on the following 23 variables.
#' \describe{
#'   \item{id}{Unique identifier for the race, which does not overlap with other
#'   2010 races (see \code{\link{houserace10}} and \code{\link{senaterace10}})}
#'   \item{state}{State name}
#'   \item{abbr}{State name abbreviation}
#'   \item{name1}{Name of the winning candidate}
#'   \item{perc1}{Percentage of vote for winning candidate (if more than one candidate)}
#'   \item{party1}{Party of winning candidate}
#'   \item{votes1}{Number of votes for winning candidate}
#'   \item{name2}{Name of candidate with second most votes}
#'   \item{perc2}{Percentage of vote for candidate who came in second}
#'   \item{party2}{Party of candidate with second most votes}
#'   \item{votes2}{Number of votes for candidate who came in second}
#'   \item{name3}{Name of candidate with third most votes}
#'   \item{perc3}{Percentage of vote for candidate who came in third}
#'   \item{party3}{Party of candidate with third most votes}
#'   \item{votes3}{Number of votes for candidate who came in third}
#'   \item{name4}{Name of candidate with fourth most votes}
#'   \item{perc4}{Percentage of vote for candidate who came in fourth}
#'   \item{party4}{Party of candidate with fourth most votes}
#'   \item{votes4}{Number of votes for candidate who came in fourth}
#'   \item{name5}{Name of candidate with fifth most votes}
#'   \item{perc5}{Percentage of vote for candidate who came in fifth}
#'   \item{party5}{Party of candidate with fifth most votes}
#'   \item{votes5}{Number of votes for candidate who came in fifth}
#'   }
#' @source MSNBC.com, retrieved 2010-11-09.
#' @keywords datasets
#' @examples
#'
#' table(govrace10[,c("party1", "party2")])
#'
"govrace10"
