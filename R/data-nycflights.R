#' Flights data
#'
#' On-time data for a random sample of flights that departed NYC (i.e. JFK,
#' LGA or EWR) in 2013.
#'
#' @source Hadley Wickham (2014). [nycflights13](https://CRAN.R-project.org/package=nycflights13): Data about flights departing
#' NYC in 2013. R package version 0.1.
#' @format A tbl_df with 32,735 rows and 16 variables:
#' \describe{
#'   \item{year,month,day}{Date of departure.}
#'   \item{dep_time,arr_time}{Departure and arrival times, local tz.}
#'   \item{dep_delay,arr_delay}{Departure and arrival delays, in minutes.
#'     Negative times represent early departures/arrivals.}
#'   \item{hour,minute}{Time of departure broken in to hour and minutes.}
#'   \item{carrier}{Two letter carrier abbreviation. See `airlines` in the
#'     `nycflights13` package for more information or google the airline code.}
#'   \item{tailnum}{Plane tail number.}
#'   \item{flight}{Flight number.}
#'   \item{origin,dest}{Origin and destination. See `airports` in the
#'     `nycflights13` package for more information or google airport the code.}
#'   \item{air_time}{Amount of time spent in the air.}
#'   \item{distance}{Distance flown.}
#' }
#' @examples
#'
#' library(dplyr)
#'
#' # Longest departure delays
#' nycflights %>%
#'   select(flight, origin, dest, dep_delay, arr_delay) %>%
#'   arrange(desc(dep_delay))
#'
#' # Longest arrival delays
#' nycflights %>%
#'   select(flight, origin, dest, dep_delay, arr_delay) %>%
#'   arrange(desc(arr_delay))
#'
"nycflights"
