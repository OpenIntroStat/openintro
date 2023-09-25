#' US Temperature Data
#'
#' A representative set of monitoring locations were taken from NOAA data that had both
#' years of interest (1950 and 2022).  The information was collected so as to
#' spread the measurements across the continental United States.  Daily high and low
#' temperatures are given for each of 24 weather stations.
#'
#' Please keep in mind that these are two annual snapshots from
#' a few dozen arbitrarily selected weather stations.  A complete
#' analysis would consider more than two years of data and a more
#' precise random sample uniformly distributed across the United States.
#'
#'
#' @name us_temp
#' @docType data
#' @format A data frame with 17250 observations on the following 9 variables.
#' \describe{
#'   \item{station}{Station ID, measurements from 24 stations.}
#'   \item{name}{Name of the station.}
#'   \item{latitude}{Latitude of the station.}
#'   \item{longitude}{Longitude of the station.}
#'   \item{elevation}{Elevation of the station.}
#'   \item{date}{Date of observed temperature.}
#'   \item{tmax}{High temp for the observed day.}
#'   \item{tmin}{Low temp for the observed day.}
#'   \item{year}{Factor variable for year, levels: `1950` and `2022`.}
#'   }
#' @source \url{https://www.ncei.noaa.gov/cdo-web/}, retrieved 2023-09-23.
#' @keywords datasets
#' @examples
#'
#' # Data taken from across the US.
#' summarized_temp <- us_temp |>
#'      group_by(station, year, latitude, longitude) |>
#'      summarize(tmax_med = median(tmax, na.rm = TRUE)) |>
#'      mutate(plot_shift = ifelse(year == "1950", 0, 1))
#'
#' library(sf)
#'
#' usa <- st_as_sf(maps::map("state", fill = TRUE, plot = FALSE))
#' ggplot(data = usa) +
#'     geom_sf() +
#'     geom_point(data = summarized_temp,
#'                aes(x = longitude + plot_shift, y = latitude,
#'                    color = tmax_med, shape = year)) +
#'     scale_color_gradient(high = "red", low = "yellow") +
#'     ggtitle("Median of the high temp, 1950 & 2022") +
#'     labs(x = "longitude", color = "median high temp")
"us_temp"
