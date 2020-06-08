#' Cherry Blossom 10 mile run data, 2009
#'
#' 14 variables for all 14,974 10 mile participants in the 2009 Cherry Blossom
#' Run (\code{run10_09}) and 9 variables for all 16,924 participants in 2012.
#'
#'
#' @name run10
#' @aliases run10 run10samp run10_09
#' @docType data
#' @format The \code{run10_09} data frame summarizes 14,974 observations on the
#' following 14 variables. The \code{run10} (2012 data) summarizes 16,924
#' observations on 9 variables, which are featured with an asterisk.
#' \describe{
#'   \item{place}{Finishing position. Separate positions are provided for each
#'   gender.}
#'   \item{time}{The total run time. For \code{run10}, this is equivalent to \code{net_time}.}
#'   \item{net_time}{The run time from the start line to the finish line.}
#'   \item{pace}{The listed pace for each runner.}
#'   \item{age}{Age.}
#'   \item{gender}{Gender.}
#'   \item{first}{First name.}
#'   \item{last}{Last name.}
#'   \item{city}{Hometown city.}
#'   \item{location}{Hometown city. (\code{run10} data only.) }
#'   \item{state}{Hometown state. (For \code{run10}, this may also list a country.) }
#'   \item{country}{Hometown country.}
#'   \item{div}{Running division (age group).}
#'   \item{div_place}{Division place, also broken up by gender.}
#'   \item{div_tot}{Total number of people in the division (again, also split by gender).}
#'   }
#' @source \href{http://www.cherryblossom.org}{cherryblossom.org}
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#' library(dplyr)
#'
#' # Men's times
#' run10 %>%
#'   filter(gender == "M") %>%
#'   ggplot(aes(x = time)) +
#'     geom_histogram(binwidth = 5)
#'
#' # Times by gender
#' ggplot(run10, aes(y = time, x = gender)) +
#'   geom_boxplot()
#'
#' # Examine sample
#' run10samp
#'
"run10"
