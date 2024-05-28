#' North Carolina births, 1000 cases
#'
#' In 2004, the state of North Carolina released to the public a large dataset
#' containing information on births recorded in this state. This dataset has
#' been of interest to medical researchers who are studying the relation
#' between habits and practices of expectant mothers and the birth of their
#' children. This is a random sample of 1,000 cases from this dataset.
#'
#' @name ncbirths
#' @docType data
#' @format A data frame with 1000 observations on the following 13 variables.
#' \describe{
#'   \item{fage}{Father's age in years.}
#'   \item{mage}{Mother's age in years.}
#'   \item{mature}{Maturity status of mother.}
#'   \item{weeks}{Length of pregnancy in weeks.}
#'   \item{premie}{Whether the birth was classified as premature (premie) or full-term.}
#'   \item{visits}{Number of hospital visits during pregnancy.}
#'   \item{gained}{Weight gained by mother during pregnancy in pounds.}
#'   \item{weight}{Weight of the baby at birth in pounds.}
#'   \item{lowbirthweight}{Whether baby was classified as low birthweight
#'   (\code{low}) or not (\code{not low}).}
#'   \item{gender}{Gender of the baby, \code{female} or \code{male}.}
#'   \item{habit}{Status of the mother as a \code{nonsmoker} or a \code{smoker}.}
#'   \item{marital}{Whether mother is \code{married} or \code{not married} at birth.}
#'   \item{whitemom}{Whether mom is \code{white} or \code{not white}.}
#'   }
#' @keywords datasets
#' @seealso We do not have ideal provenance for these data. For a better
#' documented and more recent dataset on a similar topic with similar variables,
#' see [births14].
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(ncbirths, aes(x = habit, y = weight)) +
#'   geom_boxplot() +
#'   labs(x = "Smoking status of mother", y = "Birth weight of baby (in lbs)")
#'
#' ggplot(ncbirths, aes(x = whitemom, y = visits)) +
#'   geom_boxplot() +
#'   labs(x = "Mother's race", y = "Number of doctor visits during pregnancy")
#'
#' ggplot(ncbirths, aes(x = mature, y = gained)) +
#'   geom_boxplot() +
#'   labs(x = "Mother's age category", y = "Weight gained during pregnancy")
"ncbirths"
