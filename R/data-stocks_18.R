#' Monthly Returns for a few stocks
#'
#' Monthly return data for a few stocks, which covers stock prices from
#' November 2015 through October 2018.
#'
#'
#' @name stocks_18
#' @docType data
#' @format A data frame with 36 observations on the following 3 variables.
#' \describe{
#'   \item{date}{First day of the month corresponding to the returns.}
#'   \item{goog}{Google stock price change.}
#'   \item{cat}{Caterpillar stock price change.}
#'   \item{xom}{Exxon Mobil stock price change.}
#' }
#' @source Yahoo! Finance, direct download.
#' @keywords datasets
#' @examples
#'
#' d <- stocks_18
#' dim(d)
#' apply(d[, 2:3], 2, mean)
#' apply(d[, 2:3], 2, sd)
#'
"stocks_18"
