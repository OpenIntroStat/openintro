#' Survey of Duke students and the area of their major
#'
#' Survey of 218 students, collecting information on their GPAs and their
#' academic major.
#'
#'
#' @name major_survey
#' @aliases major_survey major.survey
#' @docType data
#' @format A data frame with 218 observations on the following 2 variables.
#' \describe{ \item{gpa}{Grade point average (GPA).} \item{major}{Area of
#' academic major.} }
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(major_survey, aes(x = major, y = gpa)) +
#'   geom_boxplot()
"major_survey"
