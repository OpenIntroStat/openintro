#' United Kingdom Demographic Data
#'
#' This data set comes from the Guardian's Data Blog and includes five
#' financial demographic variables.
#'
#'
#' @name ukdemo
#' @docType data
#' @format A data frame with 12 observations on the following 6 variables.
#' \describe{
#' \item{region}{Region in the United Kingdom}
#' \item{debt}{Average regional debt, not including mortgages, in pounds}
#' \item{unemployment}{Percent unemployment}
#' \item{house}{Average house price, in pounds}
#' \item{pay}{Average hourly pay, in pounds}
#' \item{rpi}{Retail price index, which is standardized to 100 for the entire UK,
#' and lower index scores correspond to lower prices}
#' }
#' @references Guardian Data Blog
#' @source The data was described in the Guardian Data Blog:
#' \url{https://www.theguardian.com/news/datablog/interactive/2011/oct/27/debt-money-expert-facts},
#' retrieved 2011-11-01.
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(ukdemo, aes(x = pay, y = rpi)) +
#'   geom_point() +
#'   labs(x = "Average hourly pay", y = "Retail price index")
#'
"ukdemo"
