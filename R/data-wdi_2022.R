#'  World Development Indicators, 2022.
#'
#'  Adata frame with 217 rows and 11 variables from the  World Development
#'  Indicators (WDI) available from the World Bank.  The rows contain only country
#'  level data.  Regional groupings such as the European Union (EU) and financial
#'  groupings such as low income countries have been eliminated.  World Bank
#'  Country codes (iso2c, iso3c) have been dropped. The data were downloaded from
#'  the World Bank on 17 July 2024 using the R package WDI, version 2.8.8,
#'  Arel-Bundock V (2022). _WDI: World Development Indicators and Other World Bank Data_.
#'  R package version 2.7.8, \url{https://CRAN.R-project.org/package=WDI}.
#'  These data update the dataset wdi.2011 in the previous version of the package,
#'  which is outdated and has been removed.  Some variable names have been changed
#'  for readability and some constructed variables (e.g., log(gdp)) have not been
#'  included. Missing values have been retained.
#'
#' @name wdi_2022
#' @docType data
#' @format A data frame with 217 rows and 11 columns
#' \describe{
#'     \item{country}{Character variable with country name}
#'     \item{gni_percap}{Numeric, gross national income (GNI) per capita, based on purchasing power parity (PPP)
#'        in international $}
#'     \item{gdp_percap}{Numeric, gross domestic product (GDP) per capita, based on PPP in international $}
#'     \item{life_expect}{Numeric, life expectancy at birth, in years}
#'     \item{adolesc_fert_rate}{Numeric, adolescent fertility rate, births per 1,000 women age 15 - 19}
#'     \item{total_fert_rate}{Numeric, total fertility rate, births per woman}
#'     \item{infant_mortality_rate}{Numeric, infant deaths per 1,000 live births}
#'     \item{perc_basic_sanit}{Numeric, percent of the population with access to basic sanitation}
#'     \item{adult_lit_rate}{Numeric, adult literacy rate, percent of population above the age of 15
#'           considered literate}
#'     \item{govt_expend_edu}{Numeric, government expenditures on education as a percent of GDP}
#'     \item{female_prim_edu}{Numeric, primary school completion rate among the relevant population of women}
#'   }
#'
#' @source  \url{https://data.worldbank.org/indicator}
#'

"wdi_2022"
