#' Community college housing (simulated data, 2015)
#'
#' These are simulated data and intended to represent housing prices of
#' students at a college.
#'
#'
#' @name student_housing
#' @docType data
#' @format A data frame with 175 observations on the following variable.
#' \describe{
#'   \item{price}{Monthly housing price, simulated.}
#' }
#' @keywords datasets
#' @examples
#'
#' set.seed(5)
#' generate_student_housing <- data.frame(
#'   price = round(rnorm(175, 515, 65) + exp(rnorm(175, 4.2, 1)))
#' )
#' hist(student_housing$price, 20)
#' t.test(student_housing$price)
#' mean(student_housing$price)
#' sd(student_housing$price)
#' identical(student_housing, generate_student_housing)
"student_housing"
