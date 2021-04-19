#' Earthquakes
#'
#' Select set of notable earthquakes from 1900 to 1999.
#'
#' @format A data frame with 123 rows and 7 variables.
#' \describe{
#'   \item{year}{Year the earthquake took place.}
#'   \item{month}{Month the earthquake took place.}
#'   \item{day}{Day the earthquake took place}
#'   \item{richter}{Magnitude of earthquake using the Richter Scale.}
#'   \item{area}{City or geographic location of earthquakes.}
#'   \item{region}{Country or countries if the earthquake occurred on a border.}
#'   \item{deaths}{Approximate number of deaths caused by earthquake}
#' }
#' @source World Almanac and Book of Facts: 2011.
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(earthquakes, aes(x = richter, y = deaths))+
#'   geom_point()
#'
#' ggplot(earthquakes, aes(x = log(deaths)))+
#'   geom_histogram()
#'
"earthquakes"
