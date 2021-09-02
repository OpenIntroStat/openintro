#' Age at first marriage of 5,534 US women.
#'
#' Age at first marriage of 5,534 US women who responded to the National Survey
#' of Family Growth (NSFG) conducted by the CDC in the 2006 and 2010 cycle.
#'
#'
#' @name age_at_mar
#' @aliases age.at.mar ageAtMar age_at_mar
#' @docType data
#' @format A data frame with 5,534 observations and 1 variable.
#' \describe{
#'   \item{age}{Age a first marriage.}
#'   }
#' @source National Survey of Family Growth, 2006-2010 cycle,
#' \url{https://www.cdc.gov/nchs/nsfg/nsfg_2006_2010_puf.htm}.
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(age_at_mar, mapping = aes(x = age)) +
#'   geom_histogram(binwidth = 3) +
#'   labs(
#'     x = "Age", y = "Count", title = "Age at first marriage, US Women",
#'     subtitle = "Source: National Survey of Family Growth Survey, 2006 - 2010"
#'   )
"age_at_mar"
