#' 1986 Challenger disaster and O-rings
#'
#' On January 28, 1986, a routine launch was anticipated for the Challenger
#' space shuttle. Seventy-three seconds into the flight, disaster happened: the
#' shuttle broke apart, killing all seven crew members on board. An
#' investigation into the cause of the disaster focused on a critical seal
#' called an O-ring, and it is believed that damage to these O-rings during a
#' shuttle launch may be related to the ambient temperature during the launch.
#' The table below summarizes observational data on O-rings for 23 shuttle
#' missions, where the mission order is based on the temperature at the time of
#' the launch.
#'
#'
#' @name orings
#' @docType data
#' @format A data frame with 23 observations on the following 2 variables.
#' \describe{\item{temp}{Temperature, in Fahrenheit.}
#' \item{damage}{Number of damaged O-rings (out of 6).} }
#' @source
#' \url{https://archive.ics.uci.edu/ml/datasets/Challenger+USA+Space+Shuttle+O-Ring}
#' @keywords datasets
#' @examples
#'
#' orings
#'
"orings"
