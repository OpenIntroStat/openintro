#' Simulated data for association plots
#'
#' Simulated data set.
#'
#'
#' @name association
#' @aliases association_1_3, association_4_6, association_7_12
#' @docType data
#' @format A data frame with 121 observations on the following 4 variables.
#' \describe{
#'   \item{x1}{a numeric vector}
#'   \item{x2}{a numeric vector}
#'   \item{x3}{a numeric vector}
#'   \item{y1}{a numeric vector}
#'   \item{y2}{a numeric vector}
#'   \item{y3}{a numeric vector}
#'   \item{y4}{a numeric vector}
#'   \item{y5}{a numeric vector}
#'   \item{y6}{a numeric vector}
#'   \item{y7}{a numeric vector}
#'   \item{y8}{a numeric vector}
#'   \item{y9}{a numeric vector}
#'   \item{y10}{a numeric vector}
#'   \item{y11}{a numeric vector}
#'   \item{y12}{a numeric vector}
#'   }
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(association, aes(x = x1, y = y1)) +
#'   geom_point()
#'
#' ggplot(association, aes(x = x2, y = y4)) +
#'   geom_point()
#'
#' ggplot(association, aes(x = x3, y = y7)) +
#'   geom_point()
#'
"association"
