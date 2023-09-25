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
#'   \item{source}{Source.}
#'   \item{site_id}{The numeric site ID.}
#'   \item{poc}{A numeric vector, the Parameter Occurance Code.}
#'   \item{daily_mean_pm2_5_concentration}{A numeric vector with the average daily concentration of fine particulates, or particulate matter 2.5.}
#'   \item{units}{A factor with levels \code{ug/m3 LC}.}
#'   \item{daily_aqi_value}{A numeric vector with the daily air quality index.}
#'   \item{site_name}{A factor value with level \code{Durham Armory}.}
#'   \item{daily_obs_count}{A numeric vector.}
#'   \item{percent_complete}{A numeric vector.}
#'   \item{aqs_parameter_code}{A numeric vector.}
#'   \item{aqs_parameter_desc}{A factor with level \code{PM2.5 - Local Conditions}.}
#'   \item{cbsa_code}{A numeric vector.}
#'   \item{cbsa_name}{A factor with level \code{Durham-Chapel Hill, NC}.}
#'   \item{state_code}{A numeric vector.}
#'   \item{state}{A factor with level \code{North Carolina}.}
#'   \item{county_code}{A numeric vector.}
#'   \item{county}{A factor with level \code{Durham}.}
#'   \item{site_latitude}{A numeric vector of the latitude.}
#'   \item{site_longitude}{A numeric vector of the longitude.}
#'   }
#' @source US Environmental Protection Agency, AirData, 2011.
#' \url{http://www3.epa.gov/airdata/ad_data_daily.html}
#' @keywords datasets
#' @examples
#'
#' pm25_2011_durham
"pm25_2011_durham"
