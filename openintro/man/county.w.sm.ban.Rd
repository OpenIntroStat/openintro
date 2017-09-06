\name{county.w.sm.ban}
\alias{county.w.sm.ban}
\docType{data}
\title{County data set with smoking ban.}
\description{County-level data, including information on county-level smoking bans.}
\usage{data("county.w.sm.ban")}
\format{
  A data frame with 14444 observations on the following 54 variables.
  \describe{
    \item{\code{name}}{County name.}
    \item{\code{state}}{State name.}
    \item{\code{FIPS}}{a numeric vector}
    \item{\code{pop2010}}{a numeric vector}
    \item{\code{pop2000}}{a numeric vector}
    \item{\code{age_under_5}}{a numeric vector}
    \item{\code{age_under_18}}{a numeric vector}
    \item{\code{age_over_65}}{a numeric vector}
    \item{\code{female}}{a numeric vector}
    \item{\code{white}}{a numeric vector}
    \item{\code{black}}{a numeric vector}
    \item{\code{native}}{a numeric vector}
    \item{\code{asian}}{a numeric vector}
    \item{\code{pac_isl}}{a numeric vector}
    \item{\code{two_plus_races}}{a numeric vector}
    \item{\code{hispanic}}{a numeric vector}
    \item{\code{white_not_hispanic}}{a numeric vector}
    \item{\code{no_move_in_one_plus_year}}{a numeric vector}
    \item{\code{foreign_born}}{a numeric vector}
    \item{\code{foreign_spoken_at_home}}{a numeric vector}
    \item{\code{hs_grad}}{a numeric vector}
    \item{\code{bachelors}}{a numeric vector}
    \item{\code{veterans}}{a numeric vector}
    \item{\code{mean_work_travel}}{a numeric vector}
    \item{\code{housing_units}}{a numeric vector}
    \item{\code{home_ownership}}{a numeric vector}
    \item{\code{housing_multi_unit}}{a numeric vector}
    \item{\code{median_val_owner_occupied}}{a numeric vector}
    \item{\code{households}}{a numeric vector}
    \item{\code{persons_per_household}}{a numeric vector}
    \item{\code{per_capita_income}}{a numeric vector}
    \item{\code{median_household_income}}{a numeric vector}
    \item{\code{poverty}}{a numeric vector}
    \item{\code{private_nonfarm_establishments}}{a numeric vector}
    \item{\code{private_nonfarm_employment}}{a numeric vector}
    \item{\code{percent_change_private_nonfarm_employment}}{a numeric vector}
    \item{\code{nonemployment_establishments}}{a numeric vector}
    \item{\code{firms}}{a numeric vector}
    \item{\code{black_owned_firms}}{a numeric vector}
    \item{\code{native_owned_firms}}{a numeric vector}
    \item{\code{asian_owned_firms}}{a numeric vector}
    \item{\code{pac_isl_owned_firms}}{a numeric vector}
    \item{\code{hispanic_owned_firms}}{a numeric vector}
    \item{\code{women_owned_firms}}{a numeric vector}
    \item{\code{manufacturer_shipments_2007}}{a numeric vector}
    \item{\code{mercent_whole_sales_2007}}{a numeric vector}
    \item{\code{sales}}{a numeric vector}
    \item{\code{sales_per_capita}}{a numeric vector}
    \item{\code{accommodation_food_service}}{a numeric vector}
    \item{\code{building_permits}}{a numeric vector}
    \item{\code{fed_spending}}{a numeric vector}
    \item{\code{area}}{a numeric vector}
    \item{\code{density}}{a numeric vector}
    \item{\code{smoking_ban}}{a factor with levels \code{comprehensive} \code{none} \code{partial}}
  }
}
\source{These data were collected from http://quickfacts.census.gov/qfd/states/ (no longer available) and its accompanying pages. Smoking ban data were from a variety of sources.}
\examples{
data(county.w.sm.ban)
}
\keyword{datasets}
