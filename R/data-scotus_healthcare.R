#' Public Opinion with SCOTUS ruling on American Healthcare Act
#'
#' On June 28, 2012 the U.S. Supreme Court upheld the much debated 2010
#' healthcare law, declaring it constitutional. A Gallup poll released the day
#' after this decision indicates that 46% of 1,012 Americans agree with this
#' decision.
#'
#'
#' @name scotus_healthcare
#' @docType data
#' @format A tibble with 1012 observations on the following variable.
#' \describe{
#'   \item{response}{Response values reported are \code{agree} and \code{other}.}
#'   }
#' @source Gallup, Americans Issue Split Decision on Healthcare Ruling, data
#' collected June 28, 2012.
#' @keywords datasets
#' @examples
#'
#' table(scotus_healthcare)
#'
"scotus_healthcare"
