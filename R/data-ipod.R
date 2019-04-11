#' Length of songs on an iPod
#'
#' A simulated data set on lengths of songs on an iPod.
#'
#'
#' @name ipod
#' @docType data
#' @format A tibble with 3000 observations on the following variable.
#' \describe{
#'   \item{song_length}{Length of song (in minutes).}
#'   }
#' @source Simulated data.
#' @keywords datasets, iPod, inference on means
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(ipod, aes(x = song_length)) +
#'   geom_histogram(binwidth = 0.5)
#'
"ipod"
