#' Marvel Cinematic Universe Films.
#'
#' A list of MCU films through the Infinity saga.
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
#'
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(mcu_films,
#'   aes(opening_weekend_us, gross_us))+
#'  geom_point()+
#'  labs(title = "MCU Box Office Totals: Opening Weekend V All-time",
#'   x = "Opening Weekend Totals (US $)",
#'   y = "All-time Totals (US $)")
#'
#' @source
#'   \href{http://www.imdb.com}{Internet Movie Database.}
#'
"mcu_films"
