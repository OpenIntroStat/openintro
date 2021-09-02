#' Marvel Cinematic Universe films
#'
#' A list of Marvel Cinematic Universe films through the Infinity saga.
#' The Infinity saga is a 23 movie storyline spanning from Ironman
#' in 2008 to Endgame in 2019.
#'
#' Box office figures are not adjusted to a specific year.
#' They are from the year the film was released.
#'
#' @format A data frame with 23 rows and 7 variables.
#' \describe{
#'   \item{movie}{Title of the movie.}
#'   \item{length_hrs}{Length of the movie: hours portion.}
#'   \item{length_min}{Length of the movie: minutes portion.}
#'   \item{release_date}{Date the movie was released in the US.}
#'   \item{opening_weekend_us}{Box office totals for opening weekend in the US.}
#'   \item{gross_us}{All box office totals in US.}
#'   \item{gross_world}{All box office totals world wide.}
#' }
#' @source [Internet Movie Database](https://www.imdb.com/).
#' @examples
#'
#' library(ggplot2)
#' library(scales)
#'
#' ggplot(mcu_films, aes(x = opening_weekend_us, y = gross_us)) +
#'   geom_point() +
#'   labs(
#'     title = "MCU Box Office Totals: Opening weekend vs. all-time",
#'     x = "Opening weekend totals (USD in millions)",
#'     y = "All-time totals (USD)"
#'   ) +
#'   scale_x_continuous(labels = label_dollar(scale = 1 / 1000000)) +
#'   scale_y_continuous(labels = label_dollar(scale = 1 / 1000000))
"mcu_films"
