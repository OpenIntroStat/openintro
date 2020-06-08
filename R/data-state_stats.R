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
#' @source Census Quick Facts (no longer available as of 2020),
#' InfoChimps (also no longer available as of 2020),
#' \href{https://www-fars.nhtsa.dot.gov/Main/index.aspx}{National Highway Traffic Safety Administration},
#' ({\code{tr_deaths}, \code{tr_deaths_no_alc}}),
#' \href{https://www.bls.gov/web/laus/laumstrk.htm}{Bureau of Labor Statistics}
#' (\code{unempl}).
#' @keywords datasets state United States crime energy
#' @examples
#'
#' library(ggplot2)
#' library(dplyr)
#' library(maps)
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
