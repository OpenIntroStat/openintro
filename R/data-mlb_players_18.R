#' Batter Statistics for 2018 Major League Baseball (MLB) Season
#'
#' Batter statistics for 2018 Major League Baseball season.
#'
#'
#' @name mlb_players_18
#' @docType data
#' @format A data frame with 1270 observations on the following 19 variables.
#' \describe{
#'   \item{name}{Player name}
#'   \item{team}{Team abbreviation}
#'   \item{position}{Position abbreviation: \code{1B} = first base,
#' \code{2B} = second base, \code{3B} = third base, \code{C} = catcher,
#' \code{CF} = center field (outfield), \code{DH} = designated hitter,
#' \code{LF} = left field (outfield), \code{P} = pitcher,
#' \code{RF} = right field (outfield), \code{SS} = shortstop.}
#'   \item{games}{Number of games played.}
#'   \item{AB}{At bats.}
#'   \item{R}{Runs.}
#'   \item{H}{Hits.}
#'   \item{doubles}{Doubles.}
#'   \item{triples}{Triples.}
#'   \item{HR}{Home runs.}
#'   \item{RBI}{Runs batted in.}
#'   \item{walks}{Walks.}
#'   \item{strike_outs}{Strike outs.}
#'   \item{stolen_bases}{Stolen bases.}
#'   \item{caught_stealing_base}{Number of times caught stealing a base.}
#'   \item{AVG}{Batting average.}
#'   \item{OBP}{On-base percentage.}
#'   \item{SLG}{Slugging percentage.}
#'   \item{OPS}{On-base percentage plus slugging percentage.}
#'   }
#' @seealso \code{\link{mlbbat10}}, \code{\link{mlb}}
#' @source \url{https://www.mlb.com/stats}
#' @keywords datasets
#' @examples
#'
#' d <- subset(mlb_players_18, !position %in% c("P", "DH") & AB >= 100)
#' dim(d)
#'
#' # _____ Per Position, No Further Grouping _____ #
#' plot(d$OBP ~ as.factor(d$position))
#' model <- lm(OBP ~ as.factor(position), d)
#' summary(model)
#' anova(model)
#'
#' # _____ Simplified Analysis, Fewer Positions _____ #
#' pos <- list(
#'   c("LF", "CF", "RF"),
#'   c("1B", "2B", "3B", "SS"),
#'   "C"
#' )
#' POS <- c("OF", "IF", "C")
#' table(d$position)
#'
#' # _____ On-Base Percentage Across Positions _____ #
#' out <- c()
#' gp <- c()
#' for (i in 1:length(pos)) {
#'   these <- which(d$position %in% pos[[i]])
#'   out <- c(out, d$OBP[these])
#'   gp <- c(gp, rep(POS[i], length(these)))
#' }
#' plot(out ~ as.factor(gp))
#' summary(lm(out ~ as.factor(gp)))
#' anova(lm(out ~ as.factor(gp)))
"mlb_players_18"
