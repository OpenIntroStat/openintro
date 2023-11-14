#' gss_wordsum_class
#'
#' A data frame containing data from the General Social Survey.
#'
#' @name gss_wordsum_class
#' @docType data
#' @format A data frame with 795 observations on the following 2 variables.
#' \describe{
#'   \item{wordsum}{A vocabulary score calculated based on a ten question vocabulary test, where a higher score means better vocabulary. Scores range from 1 to 10.}
#'   \item{class}{Self-identified social class has 4 levels: lower, working, middle, and upper class.}
#'   }
#' @keywords datasets
#' @examples
#'
#' library(dplyr)
#'
#' gss_wordsum_class |>
#'   group_by(class) |>
#'   summarize(mean_wordsum = mean(wordsum))
#'
"gss_wordsum_class"
