#' Bank manager recommendations based on sex
#'
#' Study from the 1970s about whether sex influences hiring recommendations.
#'
#' @name sex_discrimination
#' @docType data
#' @format A data frame with 48 observations on the following 2 variables.
#' \describe{
#'   \item{sex}{a factor with levels \code{female} and \code{male}}
#'   \item{decision}{a factor with levels \code{not promoted} and \code{promoted}}
#'   }
#' @source Rosen B and Jerdee T. 1974. Influence of sex role stereotypes on
#' personnel decisions. Journal of Applied Psychology 59(1):9-14.
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' table(sex_discrimination)
#'
#' ggplot(sex_discrimination, aes(y = sex, fill = decision)) +
#'   geom_bar(position = "fill")
"sex_discrimination"
