#' Race time for Olympic and Paralympic 1500m.
#'
#' Compiled gold medal times for the 1500m race in the Olympic Games and the
#' Paralympic Games.  The times given for contestants competing in
#' the Paralympic Games are for athletes with different visual impairments;
#' T11 indicates fully blind (with an option to race with a guide-runner)
#' with T12 and T13 as lower levels of visual impairment.
#'
#'
#' @name paralympic_1500
#' @docType data
#' @format A data frame with 83 rows and 10 variables.
#' \describe{
#'   \item{year}{Year the games took place.}
#'   \item{city}{City of the games.}
#'   \item{country_of_games}{Country of the games.}
#'   \item{division}{Division: `Men` or `Women`.}
#'   \item{name}{Name of the athlete.}
#'   \item{country_of_athlete}{Country of athlete.}
#'   \item{time}{Time of gold medal race, in m:s.}
#'   \item{time_min}{Time of gold medal race, in decimal minutes (min + sec/60).}
#' }
#' @source [https://www.paralympic.org/](https://www.paralympic.org/) and [https://en.wikipedia.org/wiki/1500_metres_at_the_Olympics](https://en.wikipedia.org/wiki/1500_metres_at_the_Olympics).
#' @keywords datasets
#' @examples
#' library(ggplot2)
#' library(dplyr)
#'
#' plot_data <- paralympic_1500 |>
#'     mutate(Sight_Level = case_when(
#'         type == "T11" ~ "total impairment",
#'         type == "T12" ~ "some impairment",
#'         type == "T13" ~ "some impairment",
#'         type == "Olympic" ~ "no impairment")) |>
#'   filter(division == "Men", year > 1920) |>
#'   filter(type == "Olympic" | type == "T11")
#'
#' ggplot(plot_data, aes(x = year, y = time, color = Viz_Level)) +
#'   geom_point() +
#'   scale_x_continuous(breaks = seq(1924, 2020, by = 8)) +
#'   labs(
#'     title = "Men's Olympic and Paralympic 1500m",
#'     x = "Year",
#'     y = "Time of Race"
#'   )
#'
"paralympic_1500"
