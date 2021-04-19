#' SSD read and write speeds
#'
#' User submitted data on 1TB solid state drives (SSD).
#'
#' @format A data frame with 54 rows and 7 variables.
#' \describe{
#'   \item{brand}{Brand name of the drive.}
#'   \item{model}{Model name of the drive.}
#'   \item{samples}{Number of user submitted benchmarks.}
#'   \item{form_factor}{Physical form of the drive with levels \code{2.5}, \code{m.2}, and \code{mSATA}.}
#'   \item{nvme}{If a drive uses the \emph{nvme} protocol this value is 1, 0 if it does not.}
#'   \item{read}{Average read speed from user benchmarks in MB/s.}
#'   \item{write}{Average write speed from user benchmarks in MB/s.}
#' }
#' @source [UserBenchmark](https://ssd.userbenchmark.com/), retrieved September 1, 2020.
#' @examples
#'
#' library(ggplot2)
#' library(dplyr)
#'
#' ssd_speed %>%
#'   count(form_factor)
#'
#' ssd_speed %>%
#'   filter(form_factor != "mSATA") %>%
#'   ggplot(aes(x = read, y = write, color = form_factor))+
#'   geom_point()+
#'   labs(
#'     title = "Average read vs. write speed of SSDs",
#'     x = "Read speed (MB/s)",
#'     y = "Write speed (MB/s)"
#'   ) +
#'   facet_wrap(~form_factor, ncol = 1, scales = "free") +
#'   guides(color = FALSE)
#'
"ssd_speed"
