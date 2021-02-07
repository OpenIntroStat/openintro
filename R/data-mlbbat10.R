#' Major League Baseball Player Hitting Statistics for 2010
#'
#' Major League Baseball Player Hitting Statistics for 2010.
#'
#'
#' @name mlbbat10
#' @docType data
#' @format A data frame with 1199 observations on the following 19 variables.
#' \describe{
#'   \item{name}{Player name}
#'   \item{team}{Team abbreviation}
#'   \item{position}{Player position}
#'   \item{game}{Number of games}
#'   \item{at_bat}{Number of at bats}
#'   \item{run}{Number of runs}
#'   \item{hit}{Number of hits}
#'   \item{double}{Number of doubles}
#'   \item{triple}{Number of triples}
#'   \item{home_run}{Number of home runs}
#'   \item{rbi}{Number of runs batted in}
#'   \item{total_base}{Total bases, computed as 3*HR + 2*3B + 1*2B + H}
#'   \item{walk}{Number of walks}
#'   \item{strike_out}{Number of strikeouts}
#'   \item{stolen_base}{Number of stolen bases}
#'   \item{caught_stealing}{Number of times caught stealing}
#'   \item{obp}{On base percentage}
#'   \item{slg}{Slugging percentage (total_base / at_bat)}
#'   \item{bat_avg}{Batting average}
#' }
#' @source \url{https://www.mlb.com}, retrieved 2011-04-22.
#' @keywords datasets
#' @examples
#' library(ggplot2)
#' library(dplyr)
#' library(scales)
#' mlbbat10_200 <- mlbbat10 %>%
#'   filter(mlbbat10$at_bat > 200)
#'
#' #=====> On-base Percentage Across Positions <=====#
#' dplot1 <- mlbbat10_200
#' dplot1 %>%
#'   ggplot(aes(fill = position, x = position, y = obp)) +
#'     geom_boxplot() +
#'     labs(title = "On-base Percentage Across Positions",
#'          fill = NULL,
#'          y = "On-base Percentage",
#'          x = "Position") +
#'     scale_y_continuous(labels = unit_format(unit = "%")) +
#'     theme_bw()
#'
#'
#' #=====> Batting Average Across Positions <=====#
#' dplot2 <- mlbbat10_200
#' dplot2 %>%
#'   ggplot(aes(fill = position, x = position, y = bat_avg)) +
#'     geom_boxplot() +
#'     labs(title = "Batting Average Across Positions",
#'          fill = NULL,
#'          y = "Batting Average",
#'          x = "Position") +
#'     theme_bw()
#'
#' #=====> Home Runs Across Positions <=====#
#' dplot3 <- mlbbat10_200
#' dplot3 %>%
#'   ggplot(aes(fill = position, x = position, y = home_run)) +
#'     geom_col(show.legend = FALSE) +
#'     labs(title = "Home Runs Across Positions",
#'          y = "Home Runs",
#'          x = "Position") +
#'     scale_y_continuous(breaks = c(0, 250, 500, 750, 1000, 1250, 1500)) +
#'     theme_bw()
#'
#' #=====> Runs Batted In Across Positions <=====#
#' dplot4 <- mlbbat10_200
#' dplot4 %>%
#'   ggplot(aes(fill = position, x = position, y = run)) +
#'     geom_col(show.legend = FALSE) +
#'     labs(title = "Runs Batted In Across Positions",
#'          y = "Runs",
#'          x = "Position") +
#'     scale_y_continuous(breaks = c(0, 1000, 2000, 3000, 4000, 5000, 6000, 7000)) +
#'     theme_bw()
"mlbbat10"
