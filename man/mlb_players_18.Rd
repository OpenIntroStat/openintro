\name{mlb_players_18}
\alias{mlb_players_18}
\docType{data}
\title{
  Batter Statistics for 2018 Major League Baseball (MLB) Season
}
\description{
 Batter statistics for 2018 Major League Baseball season.
}
\usage{data("mlb_players_18")}
\format{
  A data frame with 1270 observations on the following 19 variables.
  \describe{
    \item{\code{name}}{Player name}
    \item{\code{team}}{Team abbreviation}
    \item{\code{position}}{Position abbreviation: \code{1B} = first base, \code{2B} = second base, \code{3B} = third base, \code{C} = catcher, \code{CF} = center field (outfield), \code{DH} = designated hitter, \code{LF} = left field (outfield), \code{P} = pitcher, \code{RF} = right field (outfield), \code{SS} = shortstop.}
    \item{\code{games}}{Number of games played.}
    \item{\code{AB}}{At bats.}
    \item{\code{R}}{Runs.}
    \item{\code{H}}{Hits.}
    \item{\code{doubles}}{Doubles.}
    \item{\code{triples}}{Triples.}
    \item{\code{HR}}{Home runs.}
    \item{\code{RBI}}{Runs batted in.}
    \item{\code{walks}}{Walks.}
    \item{\code{strike_outs}}{Strike outs.}
    \item{\code{stolen_bases}}{Stolen bases.}
    \item{\code{caught_stealing_base}}{Number of times caught stealing a base.}
    \item{\code{AVG}}{Batting average.}
    \item{\code{OBP}}{On-base percentage.}
    \item{\code{SLG}}{Slugging percentage.}
    \item{\code{OPS}}{On-base percentage plus slugging percentage.}
  }
}
\source{
  \url{http://mlb.mlb.com/stats}
}
\seealso{
  \code{\link{mlbBat10}}, \code{\link{MLB}}
}
\examples{
d <- subset(mlb_players_18, !position \%in\% c("P", "DH") & AB >= 100)
dim(d)

# _____ Per Position, No Further Grouping _____ #
plot(d$OBP ~ as.factor(d$position))
model <- lm(OBP ~ as.factor(position), d)
summary(model)
anova(model)

# _____ Simplified Analysis, Fewer Positions _____ #
pos <- list(c("LF", "CF", "RF"),
    c("1B", "2B", "3B", "SS"),
    "C")
POS <- c("OF", "IF", "C")
table(d$position)

# _____ On-Base Percentage Across Positions _____ #
out <- c()
gp  <- c()
for(i in 1:length(pos)){
  these <- which(d$position \%in\% pos[[i]])
  out   <- c(out, d$OBP[these])
  gp    <- c(gp, rep(POS[i], length(these)))
}
plot(out ~ as.factor(gp))
summary(lm(out ~ as.factor(gp)))
anova(lm(out ~ as.factor(gp)))
}
\keyword{datasets}
