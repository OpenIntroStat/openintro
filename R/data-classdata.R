#' Simulated class data
#'
#' This data is simulated and is meant to represent students scores from three
#' different lectures who were all given the same exam.
#'
#'
#' @name classdata
#' @docType data
#' @format A data frame with 164 observations on the following 2 variables.
#' \describe{
#'   \item{m1}{Represents a first midterm score.}
#'   \item{lecture}{Three classes: \code{a}, \code{b}, and \code{c}.}
#'   }
#' @references OpenIntro Statistics, Chapter 8.
#' @keywords datasets
#' @examples
#'
#' anova(lm(m1 ~ lecture, classdata))
"classdata"
