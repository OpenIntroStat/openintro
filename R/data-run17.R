#' Cherry Blossom Run data, 2017
#'
#' Details for all 19,961 runners in the 2017 Cherry Blossom Run, which is an
#' annual road race that takes place in Washington, DC. Most runners
#' participate in a 10-mile run while a smaller fraction take part in a 5k run
#' or walk.
#'
#' There was a time limit where all 10 Mile racers had to finish by. Can you
#' figure out what that time is?
#'
#' @name run17
#' @docType data
#' @format A data frame with 19961 observations on the following 9 variables.
#' \describe{
#'   \item{bib}{Number on the runner's bib.}
#'   \item{name}{Name of the runner, with only the initial of their last name.}
#'   \item{sex}{Gender of the runner.}
#'   \item{age}{Age of the runner.}
#'   \item{city}{Home city of the runner.}
#'   \item{net_sec}{Time to complete the race, after accounting for the staggered
#'   starting time, in seconds.}
#'   \item{clock_sec}{Time to complete the race, ignoring the staggered starting
#'   time, in seconds.}
#'   \item{pace_sec}{Average time per mile, in seconds.}
#'   \item{event}{The event the racer participated in, either the \code{"10 Mile"}
#'   race or the \code{"5K"}.}
#'   }
#' @source \url{http://www.cherryblossom.org}
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(run17, aes(x = pace_sec)) +
#'   geom_histogram(binwidth = 100) +
#'   facet_wrap(~event)
#'
"run17"
