#' Sibling Heights.
#'
#' Data collected from 11 families on the heights of male and female siblings collected by Pearson
#' and Lee to study correlation between statures of siblings.
#'
#'
#' @format A data frame with 11 rows and 3 variables.
#' \describe{
#'   \item{family}{An index variable to distinguish families in the study.}
#'   \item{brother}{Height of the male sibling in inches.}
#'   \item{sister}{Height of the female sibling in inches}
#' }
#' @examples
#' library(ggplot2)
#' ggplot(data = sibling_heights, aes(brother, sister))+
#'     geom_point()+
#'     geom_smooth(method = lm, se = FALSE)+
#'     labs(
#'         title = "Sibling Heights",
#'         x = "Height of Brother (in.),
#'         y = "Height of Sister (in.))
#'
#' @source
#'   {Pearson, K. and Lee, A. (1902-3) On the laws of inheritance in man. Biometrika, 2, 357.}
#'
"sibling_heights"
