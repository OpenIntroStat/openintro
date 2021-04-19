#' River flow data
#'
#' Flow rates (mesured in cubic feet per second) of Clarks Creek, Leach Creek,
#' Silver Creek, and Wildwood Creek Spring collected by volunteers of the
#' Pierce Conservation District in the State of Washington in the US.
#'
#' @format A data frame with 31 rows and 3 variables.
#' \describe{
#'   \item{site}{Location where measurments were taken.}
#'   \item{date}{Date measurements were taken.}
#'   \item{flow}{Flow rate of the river in cubic feet per second.}
#' }
#' @examples
#'
#' library(ggplot2)
#'
#' # River flow rates by site
#' ggplot(flow_rates, aes(x = site, y = flow)) +
#'   geom_boxplot() +
#'   labs(
#'     title = "River flow rates by site",
#'     x = "Site",
#'     y = expression(paste("Flow (ft"^3*"/s)"))
#'   )
#'
#' # River flow rates over time
#' ggplot(flow_rates, aes(x = date, y = flow, color = site, shape = site)) +
#'   geom_point(size = 2) +
#'   labs(
#'     title = "River flow rates over time",
#'     x = "Date",
#'     y = expression(paste("Flow (ft"^3*"/s)")),
#'     color = "Site", shape = "Site"
#'   )
#'
#' @source [Pierce County Water Data Viewer](https://waterquality.piercecountywa.org/applications/public.html?publicuser=Guest#waterdata/stationoverview).
#'
"flow_rates"
