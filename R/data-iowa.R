#' iowa
#'
#' A data frame containing information about the 2016 US Presidential Election for the state of Iowa.
#'
#' @name iowa
#' @docType data
#' @format A data frame with 1386 observations on the following 5 variables.
#' \describe{
#'   \item{office}{The office that the candidates were running for.}
#'   \item{candidate}{President/Vice President pairs who were running for office.}
#'   \item{party}{Political part of the candidate.}
#'   \item{county}{County in Iowa where the votes were cast.}
#'   \item{votes}{Number of votes received by the candidate.}
#'   }
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#' library(dplyr)
#'
#' plot_data <- iowa |>
#'   filter(candidate != "Total") |>
#'   group_by(candidate) |>
#'   summarize(total_votes = sum(votes) / 1000)
#'
#' ggplot(plot_data, aes(total_votes, candidate)) +
#'   geom_col() +
#'   theme_minimal() +
#'   labs(
#'     title = "2016 Presidential Election in Iowa",
#'     subtitle = "Popular vote",
#'     y = "",
#'     x = "Number of Votes (in thousands)
#'     "
#'   )
"iowa"
