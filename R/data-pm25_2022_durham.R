#' Air quality for Durham, NC
#'
#' Daily air quality is measured by the air quality index (AQI) reported by the
#' Environmental Protection Agency in 2022.
#'
#'
#' @name pm25_2022_durham
#' @docType data
#' @format A data frame with 356 observations on the following 20 variables.
#' \describe{
#'   \item{date}{Date.}
#'   \item{aqs_site_id}{The numeric site ID.}
#'   \item{poc}{A numeric vector, the Parameter Occurance Code.}
#'   \item{daily_mean_pm2_5_concentration}{A numeric vector with the average daily concentration of fine particulates, or particulate matter 2.5.}
#'   \item{units}{A character vector with value \code{ug/m3 LC}.}
#'   \item{daily_aqi_value}{A numeric vector with the daily air quality index.}
#'   \item{daily_obs_count}{A numeric vector.}
#'   \item{percent_complete}{A numeric vector.}
#'   \item{aqs_parameter_code}{A numeric vector.}
#'   \item{aqs_parameter_desc}{A factor vector with level \code{PM2.5 - Local Conditions}.}
#'   \item{cbsa_code}{A numeric vector.}
#'   \item{cbsa_name}{A character vector with value \code{Durham-Chapel Hill, NC}.}
#'   \item{state_code}{A numeric vector.}
#'   \item{state}{A character vector with value \code{North Carolina}.}
#'   \item{county_code}{A numeric vector.}
#'   \item{county}{A character vector with value \code{Durham}.}
#'   \item{site_latitude}{A numeric vector of the latitude.}
#'   \item{site_longitude}{A numeric vector of the longitude.}
#'   \item{site_name}{A character vector with value \code{Durham Armory}.}
#'   }
#' @source US Environmental Protection Agency, AirData, 2022.
#' \url{https://www.epa.gov/outdoor-air-quality-data/download-daily-data}
#' @keywords datasets
#' @examples
#'
#' library(tidyverse)
#' library(lubridate)
#'
#' monthly_pm25 <- pm25_2022_durham |>
#'     mutate(month = month(mdy(date), label = TRUE)) |>
#'     group_by(month) |>
#'     summarize(mean_pm25 = mean(daily_mean_pm2_5_concentration), na.rm = TRUE)
#'
#' monthly_pm25
#'
#' pm25_2022_durham |>
#'      mutate(month = month(mdy(date), label = FALSE)) |>
#'      ggplot() +
#'          geom_point(aes(x = month, y = daily_mean_pm2_5_concentration)) +
#'          geom_line(data = monthly_pm25, aes(x = month, y = mean_pm25),
#'                    color = "blue") +
#'          labs(x = "", y = "",
#'               title = "pm 2.5 concentration, 2022, Durham, NC") +
#'          scale_x_continuous(breaks = 1:12, labels = month.name[1:12])
#'
"pm25_2022_durham"
