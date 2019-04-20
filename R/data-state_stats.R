#' State-level data
#'
#' Information about each state collected from both the official US Census
#' website and from various other sources.
#'
#'
#' @name state_stats
#' @docType data
#' @format A data frame with 51 observations on the following 23 variables.
#' \describe{
#' \item{state}{State name.}
#' \item{abbr}{State abbreviation (e.g. \code{"MN"}).}
#' \item{fips}{FIPS code.}
#' \item{pop2010}{Population in 2010.}
#' \item{pop2000}{Population in 2000.}
#' \item{homeownership}{Homeownership rate.}
#' \item{multiunit}{Percent of living units that are in multi-unit
#' structures.}
#' \item{income}{Average income per capita.}
#' \item{med_income}{Median household income.}
#' \item{poverty}{Poverty rate.} \item{fed_spend}{Federal
#' spending per capita.}
#' \item{land_area}{Land area.}
#' \item{smoke}{Percent of population that smokes.}
#' \item{murder}{Murders per 100,000 people.}
#' \item{robbery}{Robberies per 100,000.}
#' \item{agg_assault}{Aggravated assaults per 100,000.}
#' \item{larceny}{Larcenies per 100,000.}
#' \item{motor_theft}{Vehicle theft per 100,000.}
#' \item{soc_sec}{Percent of individuals collecting social security.}
#' \item{nuclear}{Percent of power coming from nuclear sources.}
#' \item{coal}{Percent of power coming from coal sources.}
#' \item{tr_deaths}{Traffic deaths per 100,000.}
#' \item{tr_deaths_no_alc}{Traffic deaths per 100,000 where alcohol was
#' not a factor.}
#' \item{unempl}{Unemployment rate (February 2012, preliminary).}
#' }
#' @source Please note that we have not validated the Infochimps data. The
#' other data were collected directly from the corresponding websites.
#'
#' US Census website (\code{pop2010}, \code{pop2000}, \code{homeownership},
#' \code{multiunits}, \code{income}, \code{med_income}, \code{poverty},
#' \code{fed_spend}, \code{land_area}),
#' \url{http://quickfacts.census.gov/qfd/index.html}
#'
#' Infochimps
#' (\href{http://www.infochimps.com/datasets/crime-rates-by-state-2004-and-2005-and-by-type-2005-cleaned-up-v}{\code{murder},
#' \code{robbery}, \code{agg_assault}, \code{larcent}, \code{motor_theft}},
#' \href{http://www.infochimps.com/datasets/social-security-beneficiaries-annual-payments-and-average-monthl}{\code{soc_sec}},
#' \href{http://www.infochimps.com/datasets/electric-power-industry-net-generation-and-net-summer-capacity-b}{\code{coal}},
#' \href{http://www.infochimps.com/datasets/nuclear-power-plants-number-of-units-net-generation-and-net-summ}{\code{nuclear}}),
#' \url{http://www.infochimps.com} (see linked pages and corresponding
#' downloadable data sets for original source information)
#'
#' National Highway Traffic Safety Administration
#' (\href{http://www-fars.nhtsa.dot.gov/QueryTool/QuerySection/SelectFields.aspx}{\code{tr_deaths},
#' \code{tr_deaths_no_alc}}), \url{http://www-fars.nhtsa.dot.gov}
#'
#' Bureau of Labor Statistics (\code{unempl}),
#' \url{http://www.bls.gov/web/laus/laumstrk.htm}
#' @keywords datasets state United States crime energy
#' @examples
#'
#' library(ggplot2)
#' library(dplyr)
#'
#' states_selected <- state_stats %>%
#'   mutate(region = tolower(state)) %>%
#'   select(region, unempl, murder, nuclear)
#'
#' states_map <- map_data("state") %>%
#'   inner_join(states_selected)
#'
#' # Unemployment map
#' ggplot(states_map, aes(map_id = region)) +
#'   geom_map(aes(fill = unempl), map = states_map) +
#'   expand_limits(x = states_map$long, y = states_map$lat) +
#'   scale_fill_viridis_c() +
#'   labs(x = "", y = "", fill = "Unemployment\n(%)")
#'
#' # Murder rate map
#' states_map %>%
#'   filter(region != "district of columbia") %>%
#'   ggplot(aes(map_id = region)) +
#'   geom_map(aes(fill = murder), map = states_map) +
#'   expand_limits(x = states_map$long, y = states_map$lat) +
#'   scale_fill_viridis_c() +
#'   labs(x = "", y = "", fill = "Murders\nper 100k")
#'
#' # Nuclear energy map
#' ggplot(states_map, aes(map_id = region)) +
#'   geom_map(aes(fill = nuclear), map = states_map) +
#'   expand_limits(x = states_map$long, y = states_map$lat) +
#'   scale_fill_viridis_c() +
#'   labs(x = "", y = "", fill = "Nuclear energy\n(%)")
#'
#'
"state_stats"
