#' US Military Demographics
#'
#' This dataset contains demographic information on every member of the US
#' armed forces including gender, race, and rank.
#'
#' The branches covered by this data set include the Army, Navy, Air Force, and
#' Marine Corps.  Demographic information on the Coast Guard is contained in
#' the original data set but has not been included here.
#'
#' @name military
#' @docType data
#' @format A tibble with 1414593 observations on the following 6 variables.
#' \describe{
#' \item{grade}{The status of the service member as \code{enlisted} \code{officer}
#' or \code{warrant officer}.}
#' \item{branch}{The branch of the armed forces: \code{air force}, \code{army},
#' \code{marine corps}, \code{navy}.}
#' \item{gender}{Whether the service member is \code{female} or \code{male}.}
#' \item{race}{The race identified by the service member:
#' \code{ami/aln} (american indian/alaskan native), \code{asian}, \code{black},
#' \code{multi} (multi-ethinic), \code{p/i} (pacific islander), \code{unk}
#' (unknown), or \code{white}.}
#' \item{hisp}{Whether a service member identifies with being hispanic (\code{TRUE})
#' or not (\code{FALSE}).}
#' \item{rank}{The numeric rank of the service member (higher number indicates
#' higher rank).}
#' }
#' @references OpenIntro, \url{http://www.openintro.org}.
#' @source Data provided by the Department of Defense and made available at
#' \url{https://explore.data.gov/Population/Personnel-Trends-by-Gender-Race/zqae-ad8kdata.gov}.
#' Retrieval date: Feb 20, 2012.
#' @keywords datasets military demographics
#' @examples
#'
#' library(dplyr)
#' library(ggplot2)
#' library(forcats)
#'
#' # Proportion of females in military branches
#' military %>%
#'   ggplot(aes(x = factor(branch), fill = fct_rev(gender))) +
#'   geom_bar(position = "fill") +
#'   labs(
#'     x = "Branch", y = "Proportion", fill = "Gender",
#'     title = "Proportion of females in military branches"
#'   )
#'
#' # Proportion of army officer females across ranks
#' military %>%
#'   filter(
#'     grade == "officer",
#'     branch == "army"
#'   ) %>%
#'   ggplot(aes(x = factor(rank), fill = fct_rev(gender))) +
#'   geom_bar(position = "fill") +
#'   labs(
#'     x = "Rank", y = "Proportion", fill = "Gender",
#'     title = "Proportion of army officer females across ranks"
#'   )
#'
"military"