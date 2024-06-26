#' Random sample of 2000 U.S. Census Data
#'
#' A random sample of 500 observations from the 2000 U.S. Census Data.
#'
#'
#' @name census
#' @docType data
#' @format A data frame with 500 observations on the following 8 variables.
#' \describe{
#'   \item{census_year}{Census Year.}
#'   \item{state_fips_code}{Name of state.}
#'   \item{total_family_income}{Total family income (in U.S. dollars).}
#'   \item{age}{Age.}
#'   \item{sex}{Sex with levels \code{Female} and \code{Male}.}
#'   \item{race_general}{Race with levels \code{American Indian or Alaska Native}, \code{Black}, \code{Chinese}, \code{Japanese}, \code{Other Asian or Pacific Islander}, \code{Two major races}, \code{White} and \code{Other}.}
#'   \item{marital_status}{Marital status with levels \code{Divorced}, \code{Married/spouse absent}, \code{Married/spouse present}, \code{Never married/single}, \code{Separated} and \code{Widowed}.}
#'   \item{total_personal_income}{Total personal income (in U.S. dollars).}
#' }
#' @source \url{https://data.census.gov/cedsci}
#' @keywords datasets
#' @examples
#'
#' library(dplyr)
#' library(ggplot2)
#'
#' census |>
#'   filter(total_family_income > 0) |>
#'   ggplot(aes(x = total_family_income)) +
#'   geom_histogram(binwidth = 25000)
"census"
