#' London Murders, 2006-2011
#'
#' This dataset contains the victim name, age, and location of every murder
#' recorded in the Greater London area by the Metropolitan Police from January
#' 1, 2006 to September 7, 2011.
#'
#' To visualize this dataset using a map, see the
#' \code{\link{london_boroughs}} dataset, which contains the latitude and
#' longitude of polygons that define the boundaries of the 32 boroughs of
#' Greater London.
#'
#' The \code{borough} variable covers all 32 boroughs in Greater London:
#' \code{Barking & Dagenham}, \code{Barnet}, \code{Bexley}, \code{Brent},
#' \code{Bromley}, \code{Camden}, \code{Croydon}, \code{Ealing},
#' \code{Enfield}, \code{Greenwich}, \code{Hackney}, \code{Hammersmith &
#' Fulham}, \code{Haringey}, \code{Harrow}, \code{Havering}, \code{Hillingdon},
#' \code{Hounslow}, \code{Islington}, \code{Kensington & Chelsea},
#' \code{Kingston}, \code{Lambeth}, \code{Lewisham}, \code{Merton},
#' \code{Newham}, \code{Redbridge}, \code{Richmond}, \code{Southwark},
#' \code{Sutton}, \code{Tower Hamlets}, \code{Waltham Forest},
#' \code{Wandsworth}, \code{Westminster}
#'
#' @name london_murders
#' @docType data
#' @format A data frame with 838 observations on the following 5 variables.
#' \describe{
#'   \item{forename}{First name(s) of the victim.}
#'   \item{age}{Age of the victim.}
#'   \item{date}{Date of the murder (YYYY-MM-DD).}
#'   \item{year}{Year of the murder.}
#'   \item{borough}{The London borough in which the murder took place. See the Details section for a list of all the boroughs.}
#' }
#' @references Inspired by [The Guardian Datablog](https://www.theguardian.com/news/datablog/interactive/2011/oct/05/murder-london-map).
#' @source
#' \url{https://www.theguardian.com/news/datablog/2011/oct/05/murder-london-list#data}
#' @keywords datasets London murder crime map
#' @examples
#'
#' library(dplyr)
#' library(ggplot2)
#' library(lubridate)
#'
#' london_murders |>
#'   mutate(
#'     day_count = as.numeric(date - ymd("2006-01-01")),
#'     date_cut = cut(day_count, seq(0, 2160, 90))
#'   ) |>
#'   group_by(date_cut) |>
#'   add_tally() |>
#'   ggplot(aes(x = date_cut, y = n)) +
#'   geom_col() +
#'   theme(axis.text.x = element_blank(), axis.ticks.x = element_blank()) +
#'   labs(x = "Date from 01/2006 - 09/2011", y = "Number of deaths per 90 days")
"london_murders"
