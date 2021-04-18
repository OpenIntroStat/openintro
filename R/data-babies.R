#' The Child Health and Development Studies
#'
#' The Child Health and Development Studies investigate a range of topics. One
#' study, in particular, considered all pregnancies between 1960 and 1967 among
#' women in the Kaiser Foundation Health Plan in the San Francisco East Bay
#' area. We do not have ideal provenance for these data. For a better documented
#' and more recent dataset on a similar topic with similar variables,
#' see [births14]. Additionally, `Gestation` dataset in the
#' [mosaicData](https://CRAN.R-project.org/package=mosaicData)
#' package also contains similar data.
#'
#' @name babies
#' @docType data
#' @format A data frame with 1236 rows and 8 variables:
#' \describe{
#'   \item{case}{id number}
#'   \item{bwt}{birthweight, in ounces}
#'   \item{gestation}{length of gestation, in days}
#'   \item{parity}{binary indicator for a first pregnancy (0 = first pregnancy)}
#'   \item{age}{mother's age in years}
#'   \item{height}{mother's height in inches}
#'   \item{weight}{mother's weight in pounds}
#'   \item{smoke}{binary indicator for whether the mother smokes}
#'   }
#' @source These data come from Child Health and Development Studies.
#' @keywords datasets
#'
"babies"
