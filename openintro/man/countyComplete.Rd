\name{countyComplete}
\alias{countyComplete}
\docType{data}
\title{
United States Counties
}
\description{
Data for 3143 counties in the United States.
}
\usage{data(countyComplete)}
\format{
  A data frame with 3143 observations on the following 53 variables.
  \describe{
    \item{\code{state}}{State.}
    \item{\code{name}}{County name.}
    \item{\code{FIPS}}{FIPS code.}
    \item{\code{pop2010}}{2010 county population.}
    \item{\code{pop2000}}{2000 county population.}
    \item{\code{age_under_5}}{Percent of population under 5 (2010).}
    \item{\code{age_under_18}}{Percent of population under 18 (2010).}
    \item{\code{age_over_65}}{Percent of population over 65 (2010).}
    \item{\code{female}}{Percent of population that is female (2010).}
    \item{\code{white}}{Percent of population that is white (2010).}
    \item{\code{black}}{Percent of population that is black (2010).}
    \item{\code{native}}{Percent of population that is a Native American (2010).}
    \item{\code{asian}}{Percent of population that is a Asian (2010).}
    \item{\code{pac_isl}}{Percent of population that is Hawaii or Pacific Islander (2010).}
    \item{\code{two_plus_races}}{Percent of population that identifies as two or more races (2010).}
    \item{\code{hispanic}}{Percent of population that is Hispanic (2010).}
    \item{\code{white_not_hispanic}}{Percent of population that is white and not Hispanic (2010).}
    \item{\code{no_move_in_one_plus_year}}{Percent of population that has not moved in at least one year (2006-2010).}
    \item{\code{foreign_born}}{Percent of population that is foreign-born (2006-2010).}
    \item{\code{foreign_spoken_at_home}}{Percent of population that speaks a foreign language at home (2006-2010).}
    \item{\code{hs_grad}}{Percent of population that is a high school graduate (2006-2010).}
    \item{\code{bachelors}}{Percent of population that earned a bachelor's degree (2006-2010).}
    \item{\code{veterans}}{Percent of population that are veterans (2006-2010).}
    \item{\code{mean_work_travel}}{Mean travel time to work (2006-2010).}
    \item{\code{housing_units}}{Number of housing units (2010).}
    \item{\code{home_ownership}}{Homeownership rate (2006-2010).}
    \item{\code{housing_multi_unit}}{Housing units in multi-unit structures (2006-2010).}
    \item{\code{median_val_owner_occupied}}{Median value of owner-occupied housing units (2006-2010).}
    \item{\code{households}}{Households (2006-2010).}
    \item{\code{persons_per_household}}{Persons per household (2006-2010).}
    \item{\code{per_capita_income}}{Per capita money income in past 12 months (2010 dollars, 2006-2010)}
    \item{\code{median_household_income}}{Median household income (2006-2010).}
    \item{\code{poverty}}{Percent below poverty level (2006-2010).}
    \item{\code{private_nonfarm_establishments}}{Private nonfarm establishments (2009).}
    \item{\code{private_nonfarm_employment}}{Private nonfarm employment (2009).}
    \item{\code{percent_change_private_nonfarm_employment}}{Private nonfarm employment, percent change from 2000 to 2009.}
    \item{\code{nonemployment_establishments}}{Nonemployer establishments (2009).}
    \item{\code{firms}}{Total number of firms (2007).}
    \item{\code{black_owned_firms}}{Black-owned firms, percent (2007).}
    \item{\code{native_owned_firms}}{Native American-owned firms, percent (2007).}
    \item{\code{asian_owned_firms}}{Asian-owned firms, percent (2007).}
    \item{\code{pac_isl_owned_firms}}{Native Hawaiian and other Pacific Islander-owned firms, percent (2007).}
    \item{\code{hispanic_owned_firms}}{Hispanic-owned firms, percent (2007).}
    \item{\code{women_owned_firms}}{Women-owned firms, percent (2007).}
    \item{\code{manufacturer_shipments_2007}}{Manufacturer shipments, 2007 ($1000).}
    \item{\code{mercent_whole_sales_2007}}{Merchange wholesaler sales, 2007 ($1000).}
    \item{\code{sales}}{Retail sales, 2007 ($1000).}
    \item{\code{sales_per_capita}}{Retail sales per capita, 2007.}
    \item{\code{accommodation_food_service}}{Accommodation and food services sales, 2007 ($1000).}
    \item{\code{building_permits}}{Building permits (2010).}
    \item{\code{fed_spending}}{Federal spending (2009).}
    \item{\code{area}}{Land area in square miles (2010).}
    \item{\code{density}}{Persons per square mile (2010).}
  }
}
\source{
  http://quickfacts.census.gov/qfd/states/ (no longer available)
}
\references{
OpenIntro Statistics, \href{http://www.openintro.org/os}{openintro.org/os}
}
\examples{
data(countyComplete)

}
\keyword{datasets}
