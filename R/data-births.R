#' North Carolina births, 100 cases
#'
#' Data on a random sample of 100 births for babies in North Carolina where the
#' mother was not a smoker and another 50 where the mother was a smoker.
#'
#' @name births
#' @docType data
#' @format A data frame with 150 observations on the following 14 variables.
#' \describe{
#'   \item{f_age}{Father's age.}
#'   \item{m_age}{Mother's age.}
#'   \item{weeks}{Weeks at which the mother gave birth.}
#'   \item{premature}{Indicates whether the baby was premature or not.}
#'   \item{visits}{Number of hospital visits.}
#'   \item{gained}{Weight gained by mother.}
#'   \item{weight}{Birth weight of the baby.}
#'   \item{sex_baby}{Gender of the baby.}
#'   \item{smoke}{Whether or not the mother was a smoker.}
#'   }
#' @source Birth records released by North Carolina in 2004.
#' @seealso We do not have ideal provenance for these data. For a better
#' documented and more recent dataset on a similar topic with similar variables,
#' see [births14]. Additionally, [ncbirths] also contains similar data.
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(births, aes(x = smoke, y = weight)) +
#'   geom_boxplot()
"births"
