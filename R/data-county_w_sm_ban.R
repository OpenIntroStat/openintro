#' County data set with smoking ban.
#'
#' County-level data, including information on county-level smoking bans.
#'
#'
#' @name county_w_sm_ban
#' @docType data
#' @format A data frame with 14444 observations on the following 54 variables.
#' \describe{\item{name}{County name.} \item{state}{State
#' name.} \item{FIPS}{a numeric vector} \item{pop2010}{a
#' numeric vector} \item{pop2000}{a numeric vector}
#' \item{age_under_5}{a numeric vector} \item{age_under_18}{a
#' numeric vector} \item{age_over_65}{a numeric vector}
#' \item{female}{a numeric vector} \item{white}{a numeric
#' vector} \item{black}{a numeric vector} \item{native}{a
#' numeric vector} \item{asian}{a numeric vector}
#' \item{pac_isl}{a numeric vector} \item{two_plus_races}{a
#' numeric vector} \item{hispanic}{a numeric vector}
#' \item{white_not_hispanic}{a numeric vector}
#' \item{no_move_in_one_plus_year}{a numeric vector}
#' \item{foreign_born}{a numeric vector}
#' \item{foreign_spoken_at_home}{a numeric vector}
#' \item{hs_grad}{a numeric vector} \item{bachelors}{a numeric
#' vector} \item{veterans}{a numeric vector}
#' \item{mean_work_travel}{a numeric vector}
#' \item{housing_units}{a numeric vector}
#' \item{home_ownership}{a numeric vector}
#' \item{housing_multi_unit}{a numeric vector}
#' \item{median_val_owner_occupied}{a numeric vector}
#' \item{households}{a numeric vector}
#' \item{persons_per_household}{a numeric vector}
#' \item{per_capita_income}{a numeric vector}
#' \item{median_household_income}{a numeric vector}
#' \item{poverty}{a numeric vector}
#' \item{private_nonfarm_establishments}{a numeric vector}
#' \item{private_nonfarm_employment}{a numeric vector}
#' \item{percent_change_private_nonfarm_employment}{a numeric vector}
#' \item{nonemployment_establishments}{a numeric vector}
#' \item{firms}{a numeric vector} \item{black_owned_firms}{a
#' numeric vector} \item{native_owned_firms}{a numeric vector}
#' \item{asian_owned_firms}{a numeric vector}
#' \item{pac_isl_owned_firms}{a numeric vector}
#' \item{hispanic_owned_firms}{a numeric vector}
#' \item{women_owned_firms}{a numeric vector}
#' \item{manufacturer_shipments_2007}{a numeric vector}
#' \item{mercent_whole_sales_2007}{a numeric vector}
#' \item{sales}{a numeric vector} \item{sales_per_capita}{a
#' numeric vector} \item{accommodation_food_service}{a numeric vector}
#' \item{building_permits}{a numeric vector}
#' \item{fed_spending}{a numeric vector} \item{area}{a numeric
#' vector} \item{density}{a numeric vector}
#' \item{smoking_ban}{a factor with levels \code{comprehensive}
#' \code{none} \code{partial}} }
#' @source These data were collected from
#' http://quickfacts.census.gov/qfd/states/ (no longer available) and its
#' accompanying pages. Smoking ban data were from a variety of sources.
#' @keywords datasets
#' @examples
#'
#' county_w_sm_ban
#'
"county_w_sm_ban"
