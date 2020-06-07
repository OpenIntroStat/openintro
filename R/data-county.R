#' United States Counties
#'
#' Data for 3142 counties in the United States. See the
#' \code{\link{county_complete}} data set for additional variables.
#'
#'
#' @name county
#' @docType data
#' @format A data frame with 3142 observations on the following 14 variables.
#' \describe{
#'   \item{name}{County names.}
#'   \item{state}{State names.}
#'   \item{pop2000}{Population in 2000.}
#'   \item{pop2010}{Population in 2010.}
#'   \item{pop2017}{Population in 2017.}
#'   \item{pop_change}{Population change from 2010 to 2017.}
#'   \item{poverty}{Percent of population in poverty in 2017.}
#'   \item{homeownership}{Homeownership rate, 2006-2010.}
#'   \item{multi_unit}{Percent of housing units in multi-unit structures,
#' 2006-2010.}
#'   \item{unemployment_rate}{Unemployment rate in 2017.}
#'   \item{metro}{Whether the county contains a metropolitan area.}
#'   \item{median_edu}{Median education level (2013-2017).}
#'   \item{per_capita_income}{Per capita (per person) income
#' (2013-2017).}
#'   \item{median_hh_income}{Median household income.}
#'   \item{smoking_ban}{Describes whether the type of county-level
#' smoking ban in place in 2010, taking one of the values \code{"none"},
#' \code{"partial"}, or \code{"comprehensive"}.}
#' }
#' @seealso \code{\link{county_complete}}
#' @source These data were collected from
#' http://quickfacts.census.gov/qfd/states/ (no longer available) and its
#' accompanying pages.
#' @keywords datasets
#' @examples
#'
#' data(county)
#' dim(county)
#' head(county)
#'
"county"
