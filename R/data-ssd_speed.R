#' SSD Speed.
#'
#' User submitted data on 1TB solid state drives (SSD).
#' Compiled from data available on userbenchmark.com on
#' September 1, 2020.
#'
#'
#' @format A data frame with 54 rows and 7 variables.
#' \describe{
#'   \item{brand}{Brand name of the drive.}
#'   \item{model}{Model name of the drive.}
#'   \item{samples}{Number of user submitted benchmarks.}
#'   \item{form_factor}{Physical form of the drive with levels m.2, mSATA or 2.5".}
#'   \item{nvme}{If a drive uses the \emph{nvme} protocol this value is 1, 0 if it does not.}
#'   \item{read}{Average read speed from user benchmarks in MB/s.}
#'   \item{write}{Average write speed from user benchmarks in MB/s.}
#' }
#'
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(ssd_speed, aes(read, write, color = form_factor))+
#'  geom_point()+
#'  labs(
#'    title = "Average Read v. Average Write",
#'    x = "Read Speed (MB/s)",
#'    y = "Write Speed (MB/s)"
#'  )
#'
#' @source
#'   \href{https://ssd.userbenchmark.com/}{UserBenchmark}
#'
"ssd_speed"
