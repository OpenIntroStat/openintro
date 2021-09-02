#' Data for 20 metropolitan areas
#'
#' Population, percent in poverty, percent unemployment, and murder rate.
#'
#' @name murders
#' @docType data
#' @format A data frame with 20 metropolitan areas on the following 4
#' variables.
#' \describe{
#'   \item{population}{Population.}
#'   \item{perc_pov}{Percent in poverty.}
#'   \item{perc_unemp}{Percent unemployed.}
#'   \item{annual_murders_per_mil}{Number of murders per year per million
#' people.}
#' }
#' @keywords datasets
#' @source We do not have provenance for these data hence recommend not using
#' them for analysis.
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(murders, aes(x = perc_pov, y = annual_murders_per_mil)) +
#'   geom_point() +
#'   labs(
#'     x = "Percent in poverty",
#'     y = "Number of murders per year per million people"
#'   )
"murders"
