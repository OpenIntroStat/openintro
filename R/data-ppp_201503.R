#' US Poll on who it is better to raise taxes on
#'
#' A poll of 691 people, with party affiliation collected, asked whether they
#' think it's better to raise taxes on the rich or raise taxes on the poor.
#'
#'
#' @name ppp_201503
#' @aliases ppp_201503 ppp.201503
#' @docType data
#' @format A data frame with 691 observations on the following 2 variables.
#' \describe{\item{party}{Political party affiliation.} \item{taxes}{Support
#' for who to raise taxes on.} }
#' @source Public Policy Polling, Americans on College Degrees, Classic
#' Literature, the Seasons, and More, data collected Feb 20-22, 2015.
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(ppp_201503, aes(x = party, fill = taxes)) +
#'   geom_bar(position = "fill") +
#'   labs(x = "Party", x = "Proportion", fill = "Taxes")
#'
"ppp_201503"
