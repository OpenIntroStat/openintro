\name{mlbBat10}
\alias{mlbBat10}
\docType{data}
\title{
Major League Baseball Player Hitting Statistics for 2010
}
\description{
Major League Baseball Player Hitting Statistics for 2010.
}
\usage{data(mlbBat10)}
\format{
  A data frame with 1199 observations on the following 19 variables.
  \describe{
    \item{\code{name}}{Player name}
    \item{\code{team}}{Team abbreviation}
    \item{\code{position}}{Player position}
    \item{\code{G}}{Number of games}
    \item{\code{AB}}{Number of at bats}
    \item{\code{R}}{Number of runs}
    \item{\code{H}}{Number of hits}
    \item{\code{2B}}{Number of doubles}
    \item{\code{3B}}{Number of triples}
    \item{\code{HR}}{Number of home runs}
    \item{\code{RBI}}{Number of runs batted in}
    \item{\code{TB}}{Total bases, computed as 3*HR + 2*3B + 1*2B + H}
    \item{\code{BB}}{Number of walks}
    \item{\code{SO}}{Number of strikeouts}
    \item{\code{SB}}{Number of stolen bases}
    \item{\code{CS}}{Number of times caught stealing}
    \item{\code{OBP}}{On base percentage}
    \item{\code{SLG}}{Slugging percentage (TB / AB)}
    \item{\code{AVG}}{Batting average}
  }
}
\source{
Data was collected from MLB.com on April 22nd, 2011.
}
\examples{
data(mlbBat10)
d   <- mlbBat10[mlbBat10$AB > 200,]
pos <- list(c("OF"), c("1B", "2B", "3B", "SS"), "DH", "C")
POS <- c("OF", "IF", "DH", "C")

#=====> On-base Percentage Across Positions <=====#
out <- c()
gp  <- c()
for(i in 1:length(pos)){
	these <- which(d$pos \%in\% pos[[i]])
	out   <- c(out, d[these,"OBP"])
	gp    <- c(gp, rep(POS[i], length(these)))
}
plot(out ~ as.factor(gp))
summary(lm(out ~ as.factor(gp)))
anova(lm(out ~ as.factor(gp)))

#=====> Batting Average Across Positions <=====#
out <- c()
gp  <- c()
for(i in 1:length(pos)){
	these <- which(d$pos \%in\% pos[[i]])
	out   <- c(out, d[these,"AVG"])
	gp    <- c(gp, rep(POS[i], length(these)))
}
plot(out ~ as.factor(gp))
summary(lm(out ~ as.factor(gp)))
anova(lm(out ~ as.factor(gp)))

#=====> Home Runs Across Positions <=====#
out <- c()
gp  <- c()
for(i in 1:length(pos)){
	these <- which(d$pos \%in\% pos[[i]])
	out   <- c(out, d[these,"HR"])
	gp    <- c(gp, rep(POS[i], length(these)))
}
plot(out ~ as.factor(gp))
summary(lm(out ~ as.factor(gp)))
anova(lm(out ~ as.factor(gp)))

#=====> Runs Batted In Across Positions <=====#
out <- c()
gp  <- c()
for(i in 1:length(pos)){
	these <- which(d$pos \%in\% pos[[i]])
	out   <- c(out, d[these,"RBI"])
	gp    <- c(gp, rep(POS[i], length(these)))
}
plot(out ~ as.factor(gp))
summary(lm(out ~ as.factor(gp)))
anova(lm(out ~ as.factor(gp)))

}
\keyword{datasets}