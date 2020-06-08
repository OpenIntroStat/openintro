#' The Child Health and Development Studies
#'
#' The Child Health and Development Studies investigate a range of topics. One
#' study, in particular, considered all pregnancies between 1960 and 1967 among
#' women in the Kaiser Foundation Health Plan in the San Francisco East Bay
#' area. The goal is to model the weight of the infants (\code{bwt}, in ounces)
#' using variables including length of pregnancy in days (\code{gestation}),
#' mother's age in years (\code{age}), mother's height in inches
#' (\code{height}), whether the child was the first born (\code{parity}),
#' mother's pregnancy weight in pounds (\code{weight}), and whether the mother
#' was a smoker (\code{smoke}).
#'
#'
#' @name babies
#' @docType data
#' @format A data frame with 1236 rows and 8 variables:
#' \describe{
#'   \item{case}{id number}
#'   \item{bwt}{birthweight, in ounces}
#'   \item{gestation}{length of gestation, in days}
#'   \item{parity}{binary indicator for a first pregnancy (0=first pregnancy)}
#'   \item{age}{mother's age in years}
#'   \item{height}{mother's height in inches}
#'   \item{weight}{mother's weight in pounds}
#'   \item{smoke}{binary indicator for whether the mother smokes}
#'   }
#' @source These data come from Child Health and Development Studies.
#' Also see the Gestation dataset from the mosaicData package.
#' @keywords datasets
"babies"
