#' Daily observations for the S\&P 500
#'
#' Data runs from 1950 to near the end of 2018.
#'
#'
#' @name sp500_1950_2018
#' @docType data
#' @format A data frame with 17346 observations on the following 7 variables.
#' \describe{
#'   \item{Date}{Date of the form `"YYYY-MM-DD"`.}
#'   \item{Open}{Opening price.}
#'   \item{High}{Highest price of the day.}
#'   \item{Low}{Lowest price of the day.}
#'   \item{Close}{Closing price of the day.}
#'   \item{Adj.Close}{Adjusted price at close after accounting for dividends paid out.}
#'   \item{Volume}{Trading volume.}
#' }
#' @source Yahoo! Finance
#' @keywords datasets
#' @examples
#'
#' data(sp500_1950_2018)
#' sp500.ten.years <- subset(sp500_1950_2018,
#'     "2009-01-01" <= as.Date(Date) & as.Date(Date) <= "2018-12-31")
#' d <- diff(sp500.ten.years$Adj.Close)
#' mean(d > 0)
#'
#'
"sp500_1950_2018"
