#' Textbook data for UCLA Bookstore and Amazon
#'
#' A random sample was taken of nearly 10\% of UCLA courses. The most expensive
#' textbook for each course was identified, and its new price at the UCLA
#' Bookstore and on Amazon.com were recorded.
#'
#' The sample represents only courses where textbooks were listed online
#' through UCLA Bookstore's website. The most expensive textbook was selected
#' based on the UCLA Bookstore price, which may insert bias into the data; for
#' this reason, it may be beneficial to analyze only the data where \code{more}
#' is \code{"N"}.
#'
#' @name textbooks
#' @docType data
#' @format A data frame with 73 observations on the following 7 variables.
#' \describe{
#'   \item{dept_abbr}{Course department (abbreviated).}
#'   \item{course}{Course number.}
#'   \item{isbn}{Book ISBN.}
#'   \item{ucla_new}{New price at the UCLA Bookstore.}
#'   \item{amaz_new}{New price on Amazon.com.}
#'   \item{more}{Whether additional books were required for the course (\code{Y} means "yes, additional books were required").}
#'   \item{diff}{The UCLA Bookstore price minus the Amazon.com price for each book.}
#'   }
#' @source Collected by David Diez.
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(textbooks, aes(x = diff)) +
#'   geom_histogram(binwidth = 5)
#'
#' t.test(textbooks$diff)
"textbooks"
