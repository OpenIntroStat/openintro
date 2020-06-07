#' Absenteeism from school in New South Wales
#'
#' Researchers interested in the relationship between absenteeism from school
#' and certain demographic characteristics of children collected data from 146
#' randomly sampled students in rural New South Wales, Australia, in a
#' particular school year.
#'
#'
#' @name absenteeism
#' @docType data
#' @format A data frame with 146 observations on the following 5 variables.
#' \describe{
#'   \item{eth}{Ethnicity, representing Aboriginal (`A`) or not (`N`).}
#'   \item{sex}{Gender.}
#'   \item{age}{Age bucket.}
#'   \item{lrn}{Learner status, with average learner (`AL`) and
#'   slow learner (`SL`).}
#'   \item{days}{Number of days absent.}
#'   }
#' @source Venables WN, Ripley BD. 2002. Modern Applied Statistics with S.
#' Fourth Edition. New York: Springer.
#'
#' Data can also be found in the R `MASS` package under the data set name
#' `quine`.
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(absenteeism, aes(x = eth, y = days)) +
#'   geom_boxplot() +
#'   coord_flip()
#'
"absenteeism"
