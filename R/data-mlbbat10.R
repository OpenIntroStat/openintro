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
#' \dontrun{
#' d   <- mlbbat10[mlbbat10$at_bat > 200,]
#' pos <- list(c("OF"), c("1B", "2B", "3B", "SS"), "DH", "C")
#' POS <- c("OF", "IF", "DH", "C")
#'
#' #=====> On-base Percentage Across Positions <=====#
#' out <- c()
#' gp  <- c()
#' for(i in 1:length(pos)){
#' 	these <- which(d$position %in% pos[[i]])
#' 	out   <- c(out, d[these, "obp"])
#' 	gp    <- c(gp, rep(POS[i], length(these)))
#' }
#' plot(out ~ as.factor(gp))
#' summary(lm(out ~ as.factor(gp)))
#' anova(lm(out ~ as.factor(gp)))
#'
#' #=====> Batting Average Across Positions <=====#
#' out <- c()
#' gp  <- c()
#' for(i in 1:length(pos)){
#' 	these <- which(d$pos %in% pos[[i]])
#' 	out   <- c(out, d[these,"AVG"])
#' 	gp    <- c(gp, rep(POS[i], length(these)))
#' }
#' plot(out ~ as.factor(gp))
#' summary(lm(out ~ as.factor(gp)))
#' anova(lm(out ~ as.factor(gp)))
#'
#' #=====> Home Runs Across Positions <=====#
#' out <- c()
#' gp  <- c()
#' for(i in 1:length(pos)){
#' 	these <- which(d$pos %in% pos[[i]])
#' 	out   <- c(out, d[these,"HR"])
#' 	gp    <- c(gp, rep(POS[i], length(these)))
#' }
#' plot(out ~ as.factor(gp))
#' summary(lm(out ~ as.factor(gp)))
#' anova(lm(out ~ as.factor(gp)))
#'
#' #=====> Runs Batted In Across Positions <=====#
#' out <- c()
#' gp  <- c()
#' for(i in 1:length(pos)){
#' 	these <- which(d$pos %in% pos[[i]])
#' 	out   <- c(out, d[these,"RBI"])
#' 	gp    <- c(gp, rep(POS[i], length(these)))
#' }
#' plot(out ~ as.factor(gp))
#' summary(lm(out ~ as.factor(gp)))
#' anova(lm(out ~ as.factor(gp)))
#' }
#'
"mlbbat10"
