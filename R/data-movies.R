#' movies
#'
#' A dataset with information about movies released in 2003.
#'
#' @name movies
#' @docType data
#' @format A data frame with 140 observations on the following 5 variables.
#' \describe{
#'   \item{movie}{Title of the movie.}
#'   \item{genre}{Genre of the movie.}
#'   \item{score}{Critics score of the movie on a 0 to 100 scale.}
#'   \item{rating}{MPAA rating of the film.}
#'   \item{box_office}{Millions of dollars earned at the box office in the US and Canada.}
#' }
#' @keywords datasets
#' @source [Investigating Statistical Concepts, Applications and Methods](http://www.rossmanchance.com/iscam2/data/movies03.txt)
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(movies, aes(score, box_office, color = genre)) +
#'   geom_point() +
#'   theme_minimal() +
#'   labs(
#'     title = "Does a critic score predict box office earnings?",
#'     x = "Critic rating",
#'     y = "Box office earnings (millions US$",
#'     color = "Genre"
#'   )
#'
"movies"
