#' Cleveland and Sacramento
#'
#' Data on a sample of 500 people from the Cleveland, OH and Sacramento, CA
#' metro areas.
#'
#' @name cle_sac
#' @docType data
#' @format A data frame with 500 observations representing people on the
#' following 8 variables.
#' \describe{
#'   \item{year}{Year the data was collected.}
#'   \item{state}{State where person resides.}
#'   \item{city}{City.}
#'   \item{age}{Age.}
#'   \item{sex}{Sex.}
#'   \item{race}{Race.}
#'   \item{marital_status}{Marital status.}
#'   \item{personal_income}{Personal income.}
#'   }
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(cle_sac, aes(x = personal_income)) +
#'   geom_histogram(binwidth = 20000) +
#'   facet_wrap(~city)
"cle_sac"
