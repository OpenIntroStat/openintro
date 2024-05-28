#' Length of songs on an iPod
#'
#' A simulated dataset on lengths of songs on an iPod.
#'
#'
#' @name ipod
#' @docType data
#' @format A data frame with 3000 observations on the following variable.
#' \describe{
#'   \item{song_length}{Length of song (in minutes).}
#'   }
#' @source Simulated data.
#' @keywords datasets music
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(ipod, aes(x = song_length)) +
#'   geom_histogram(binwidth = 0.5)
"ipod"
