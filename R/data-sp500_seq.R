#' S&P 500 stock data
#'
#' Daily stock returns from the S&P500 for 1990-2011 can be used to assess
#' whether stock activity each day is independent of the stock's behavior on
#' previous days. We label each day as Up or Down (D) depending on whether the
#' market was up or down that day. For example, consider the following changes
#' in price, their new labels of up and down, and then the number of days that
#' must be observed before each Up day.
#'
#'
#' @name sp500_seq
#' @docType data
#' @format A data frame with 2948 observations on the following variable.
#' \describe{
#'   \item{race}{a factor with levels \code{1}, \code{2}, \code{3}, \code{4},
#'   \code{5}, \code{6}, and \code{7+}}
#'   }
#' @source \url{http://www.google.com/finance}
#' @keywords datasets
#' @examples
#'
#' sp500_seq
#'
"sp500_seq"
