#' Vehicle info from the EPA for 2021
#'
#' Details from the EPA.
#'
#'
#' @name epa2021
#' @docType data
#' @format A data frame with 1108 observations on the following 28 variables.
#' \describe{
#'   \item{model_yr}{a numeric vector}
#'   \item{mfr_name}{Manufacturer name.}
#'   \item{division}{Vehicle division.}
#'   \item{carline}{Vehicle line.}
#'   \item{mfr_code}{Manufacturer code.}
#'   \item{model_type_index}{Model type index.}
#'   \item{engine_displacement}{Engine displacement.}
#'   \item{no_cylinders}{Number of cylinders.}
#'   \item{transmission_speed}{Transmission speed.}
#'   \item{city_mpg}{City mileage.}
#'   \item{hwy_mpg}{Highway mileage.}
#'   \item{comb_mpg}{Combined mileage.}
#'   \item{guzzler}{Whether the car is considered a "guzzler" or not, a factor with levels `N` and `Y.`}
#'   \item{air_aspir_method}{Air aspiration method.}
#'   \item{air_aspir_method_desc}{Air aspiration method description.}
#'   \item{transmission}{Transmission type.}
#'   \item{transmission_desc}{Transmission type description.}
#'   \item{no_gears}{Number of gears.}
#'   \item{trans_lockup}{Whether transmission locks up, a factor with levels `N` and `Y`.}
#'   \item{trans_creeper_gear}{A factor with level `N` only.}
#'   \item{drive_sys}{Drive system, a factor with levels.}
#'   \item{drive_desc}{Drive system description.}
#'   \item{fuel_usage}{Fuel usage, a factor with levels.}
#'   \item{fuel_usage_desc}{Fuel usage description.}
#'   \item{class}{Class of car.}
#'   \item{car_truck}{Car or truck, a factor with levels `car`, `1`, `??`, `1`.}
#'   \item{release_date}{Date of vehicle release.}
#'   \item{fuel_cell}{Whether the car has a fuel cell or not, a factor with levels `N`, `NA`.}
#' }
#' @source Fuel Economy Data from [fueleconomy.gov](https://www.fueleconomy.gov/feg/download.shtml). Retrieved 6 May, 2021.
#' @seealso epa2012
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#' library(dplyr)
#'
#' # Variable descriptions
#' distinct(epa2021, air_aspir_method_desc, air_aspir_method)
#' distinct(epa2021, transmission_desc, transmission)
#' distinct(epa2021, drive_desc, drive_sys)
#' distinct(epa2021, fuel_usage_desc, fuel_usage)
#'
#' # Guzzlers and their mileages
#' ggplot(epa2021, aes(x = city_mpg, y = hwy_mpg, color = guzzler)) +
#'   geom_point() +
#'   facet_wrap(~guzzler, ncol = 1)
#'
#' # Compare to 2012
#' epa2021 %>%
#'   bind_rows(epa2012) %>%
#'   group_by(model_yr) %>%
#'   summarise(
#'     mean_city = mean(city_mpg),
#'     mean_hwy  = mean(hwy_mpg)
#'     )
#'
"epa2021"
