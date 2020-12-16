#' Snowfall.
#'
#' Annual snowfall data for Paradise, Mt. Rainier National Park.
#' To include a full winter season, snowfall is recorded from July 1
#' to June 30. Data from 1943-1946 not available due to road closure
#' during World War II. Records also unavailable from 1948-1954.
#'
#' @format A data frame with 100 rows and 3 variables.
#' \describe{
#'   \item{year_start}{The year snowfall measurement began on July 1.}
#'   \item{year_end}{The year snowfall measurement ended on June 30.}
#'   \item{snowfall}{Snowfall measured in inches}
#' }
#'
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(snowfall, aes(snowfall))+
#' geom_histogram(color = "white", fill = "cadetblue")+
#'   labs(title = "Yearly Snowfall",
#'       subtitle = "Paradise, Mt. Rainier National Park",
#'       x = "Snowfall (in.)",
#'       y = "Number of Years",
#'       caption = "Source: National Parks Services")
#'
#' @source
#'   \href{https://www.nps.gov/mora/planyourvisit/annual-snowfall-totals.htm#:~:text=The%20Paradise%20area%20at%20Mount,93.5%20feet%2F28.5%20meters).}{National Parks Services}
#'
"snowfall"
