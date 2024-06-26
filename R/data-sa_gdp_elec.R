#' Sustainability and Economic Indicators for South Africa.
#'
#' Includes yearly data on gdp, gni, co2 emissions, start up costs.
#'
#' @format A data frame with 16 rows and 7 variables.
#' \describe{
#'   \item{year}{Year data collected.}
#'   \item{access_elec}{Access to electricity as a percentage of the population.}
#'   \item{startup}{cost of business startup procedures as a percent of GNI.}
#'   \item{co2}{CO2 emission in kt (kiloton).}
#'   \item{gdp}{GDP per capita, PPP in constant 2017 international dollars.}
#'   \item{gni}{GNI per capita, PPP in constant 2017 international dollars.}
#'   \item{co2_kg_ppp}{kg per 2017 PPP dollars of GDP.}

#' }
#' @source
#' - [World Bank I](https://databank.worldbank.org/source/world-development-indicators)
#' - [World Bank II](https://www.worldbank.org/en/businessready?topic=trading-across-borders)
#' - [Carbon Dioxide Information Analysis Center, Environmental Sciences Division, Oak Ridge National Laboratory](https://www.climatewatchdata.org)
#' @examples
#' library(ggplot2)
#'
#' ggplot(sa_gdp_elec, aes(year, access_elec)) +
#'   geom_point(alpha = 0.3) +
#'   labs(
#'     x = "Year",
#'     y = "Percent of Population",
#'     title = "Access to Electricity in South Africa 2003 - 2018"
#'   )
#'
"sa_gdp_elec"
