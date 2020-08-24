#' Can Americans categorize facts and opinions?
#'
#' Pew Research Center conducted a survey in 2018, asking
#' participants to categorize five factual and five opinion statements.
#'
#'
#' @format A data frame with 5035 rows and 3 variables.
#' \describe{
#'   \item{age_group}{Age group of survey participant.}
#'   \item{fact_correct}{Number of factual statements classified correctly (out of 5).}
#'   \item{opinion_correct}{Number of opinion statements classified correctly (out of 5).}
#' }
#' @examples
#' boxplot(fact_correct~age_group, data = fact_opinion,
#'   main = "Number of Factual Statements Correctly Categorized",
#'   xlab = "Age Group", ylab = "Number Correct (out of 5)")
#'
#' @source
#'    \href{https://www.pewresearch.org/fact-tank/2018/10/23/younger-americans-are-better-than-older-americans-at-telling-factual-news-statements-from-opinions/}{Pew Research Center}
#'
"fact_opinion"
