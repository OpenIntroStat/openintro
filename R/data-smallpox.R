#' Smallpox vaccine results
#'
#' A sample of 6,224 individuals from the year 1721 who were exposed to
#' smallpox in Boston.  Some of them had received a vaccine (inoculated) while
#' others had not.  Doctors at the time believed that inoculation, which
#' involves exposing a person to the disease in a controlled form, could reduce
#' the likelihood of death.
#'
#'
#' @name smallpox
#' @docType data
#' @format A data frame with 6224 observations on the following 2 variables.
#' \describe{
#'   \item{result}{Whether the person `died` or `lived`.}
#'   \item{inoculated}{Whether the person received inoculated.}
#' }
#' @source Fenner F. 1988.  Smallpox and Its Eradication (History of
#' International Public Health, No. 6).  Geneva: World Health Organization.
#' ISBN 92-4-156110-6.
#' @keywords datasets
#' @examples
#'
#' data(smallpox)
#' table(smallpox)
"smallpox"
