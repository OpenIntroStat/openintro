#' River Flow Data.
#'
#' We consider data on river flow rates collected by volunteers of the Pierce Conservation District.
#'
#'
#' @format A data frame with 31 rows and 3 variables.
#' \describe{
#'   \item{site}{Location where measurments were taken.}
#'   \item{date}{Date measurements were taken.}
#'   \item{flow}{Flow rate of the river in cubic feet per second.}
#' }
#' @examples
#' boxplot(flow~site, data = flow_rates, main="River Flow Rates",
#'   xlab = "Site", ylab = expression(paste("Flow (ft"^3*"/s)")))
#'
#' plot(flow_rates$date, flow_rates$flow, col = as.factor(flow_rates$site),
#'   main = "Flow Rates Over Time", xlab = "Date",
#'   ylab = expression(paste("Flow (ft"^3*"/s)")))
#' legend("topright", title = "Site",
#'   legend = c("Wildwood Creek Spring", "Silver Creek",
#'   "Clarks Creek", "Leach Creek"), fill = c("Blue","Green","Black","Red"))
#'
#' @source
#'   \href{https://bit.ly/39gXVc9}{Pierce County Water Data Viewer}
#'
"flow_rates"
