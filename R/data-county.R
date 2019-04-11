#' United States Counties
#'
#' Data for 3143 counties in the United States. See the
#' \code{\link{county_complete}} data set for additional variables.
#'
#'
#' @name county
#' @docType data
#' @format A tibble with 3143 observations on the following 15 variables.
#' \describe{
#'   \item{name}{County names.}
#'   \item{state}{State names.}
#'   \item{\code{FIPS}}{FIPS number.}
#'   \item{pop2000}{Population in 2000.}
#'   \item{pop2010}{Population in 2010.}
#'   \item{fed_spend}{Federal spending per capita}
#'   \item{poverty}{Percent of population in poverty.}
#'   \item{homeownership}{Homeownership rate, 2006-2010.}
#'   \item{multiunit}{Percent of housing units in multi-unit structures,
#' 2006-2010.}
#'   \item{income}{Income per capita income.}
#'   \item{med_income}{Median income.}
#'   \item{\code{age_5}}{Percent of population under 5 years of age.}
#'   \item{\code{age_18}}{Percent of population under 18 years of age.}
#'   \item{\code{female}}{Percent of population that is female.}
#'   \item{\code{density}}{The number of people per square mile.}
#'   \item{\code{white}}{Percent of population that is white.}
#'   \item{\code{black}}{Percent of population that is black.}
#'   \item{\code{pph}}{Average persons per household.}
#'   }
#' @seealso \code{\link{email}}, \code{\link{email50}},
#' \code{\link{county_complete}}
#' @references ~~ OpenIntro Statistics,
#' \href{http://www.openintro.org/stat}{openintro.org} ~~
#' @source These data were collected from
#' http://quickfacts.census.gov/qfd/states/ (no longer available) and its
#' accompanying pages.
#' @keywords datasets
#' @examples
#'
#' p00 <- county$pop2000
#' p10 <- county$pop2010
#' hist((p10 - p00)/p00)
#'
"county"
