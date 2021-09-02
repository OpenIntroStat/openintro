#' Google stock data
#'
#' Google stock data from 2006 to early 2014, where data from the first day
#' each month was collected.
#'
#'
#' @name goog
#' @docType data
#' @format A data frame with 98 observations on the following 7 variables.
#' \describe{
#'   \item{date}{a factor with levels \code{2006-01-03}, \code{2006-02-01}, and so on}
#'   \item{open}{a numeric vector}
#'   \item{high}{a numeric vector}
#'   \item{low}{a numeric vector}
#'   \item{close}{a numeric vector}
#'   \item{volume}{a numeric vector}
#'   \item{adj_close}{a numeric vector}
#'   }
#' @source Yahoo! Finance.
#' @keywords datasets
#' @examples
#'
#' goog
"goog"
