#' US temperatures in 1950 and 2022
#'
#' A representative set of monitoring locations were taken from NOAA
#' data in 1950 and 2022 such that the locations are sampled roughly
#' geographically across the continental US (the observations do not
#' represent a random sample of geographical locations).
#'
#' Please keep in mind that the data represent two annual snapshots, and a complete
#' analysis would consider more than two years of data and a random or more
#' complete sampling of weather stations across the US.
#'
#' @name us_temperature
#' @docType data
#' @format A data frame with 18759 observations on the following 9 variables.
#' \describe{
#'   \item{location}{Location of the NOAA weather station.}
#'   \item{station}{Formal ID of the NOAA weather station.}
#'   \item{latitude}{Latitude of the NOAA weather station.}
#'   \item{longitude}{Longitude of the NOAA weather station.}
#'   \item{elevation}{Elevation of the NOAA weather station.}
#'   \item{date}{Date the measurement was taken (Y-m-d).}
#'   \item{tmax}{Maximum daily temperature (Farenheit).}
#'   \item{tmin}{Minimum daily temperature (Farenheit).}
#'   \item{year}{Year of the measurement.}
#'  }
#' @source [NOAA Climate Data Online](https://www.ncdc.noaa.gov/cdo-web/). Retrieved 23 September, 2023.
#' @keywords datasets
#' @examples
#' library(dplyr)
#' library(ggplot2)
#' library(maps)
#'
#' summarized_temp <- us_temperature |>
#'   group_by(station, year, latitude, longitude) |>
#'   summarize(tmax_med = median(tmax, na.rm = TRUE)) |>
#'   mutate(plot_shift = ifelse(year == "1950", 0, 1)) |>
#'   mutate(year = as.factor(year))
#'
#' usa <- map_data("state")
#'
#' ggplot(data = usa, aes(x = long, y = lat)) +
#'   geom_polygon(aes(group = group), color = "black", fill = "white") +
#'   geom_point(
#'     data = summarized_temp,
#'     aes(
#'       x = longitude + plot_shift, y = latitude,
#'       color = tmax_med, shape = year
#'     )
#'   ) +
#'   scale_color_gradient(high = IMSCOL["red", 1], low = IMSCOL["yellow", 1]) +
#'   ggtitle("Median of the daily high temp, 1950 & 2022") +
#'   labs(
#'     x = "longitude",
#'     color = "median high temp"
#'   ) +
#'   guides(shape = guide_legend(override.aes = list(color = "black")))
"us_temperature"
