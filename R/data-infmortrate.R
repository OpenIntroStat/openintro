#' Infant Mortality Rates, 2012
#'
#' This entry gives the number of deaths of infants under one year old in 2012
#' per 1,000 live births in the same year. This rate is often used as an
#' indicator of the level of health in a country.
#'
#' The data is given in decreasing order of infant mortality rates. There are a
#' few potential outliers.
#'
#' @name infmortrate
#' @docType data
#' @format A data frame with 222 observations on the following 2 variables.
#' \describe{
#'   \item{country}{Name of country.}
#'   \item{inf_mort_rate}{Infant mortality rate per 1,000 live births.}
#'   }
#' @source CIA World Factbook,
#' \url{https://www.cia.gov/library/publications/the-world-factbook/rankorder/rawdata_2091.txt}.
#' @keywords datasets histogram distribution
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(infmortrate, aes(x = inf_mort_rate)) +
#'   geom_histogram(binwidth = 10)
#'
#' ggplot(infmortrate, aes(x = inf_mort_rate)) +
#'   geom_density()
#'
"infmortrate"
