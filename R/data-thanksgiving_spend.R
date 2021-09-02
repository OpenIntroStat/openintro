#' Thanksgiving spending, simulated based on Gallup poll.
#'
#' This entry gives simulated spending data for Americans during Thanksgiving
#' in 2009 based on findings of a Gallup poll.
#'
#'
#' @name thanksgiving_spend
#' @aliases thanksgiving.spend thanksgiving_spend tgSpending
#' @docType data
#' @format A data frame with 436 observations on the following 1 variable.
#' \describe{
#'   \item{spending}{Amount of spending, in US dollars.}
#'   }
#' @keywords datasets histogram distribution
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(thanksgiving_spend, aes(x = spending)) +
#'   geom_histogram(binwidth = 20)
"thanksgiving_spend"
