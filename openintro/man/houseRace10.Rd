\name{houseRace10}
\alias{houseRace10}
\docType{data}
\title{
Election results for the 2010 U.S. House of Represenatives races
}
\description{
Election results for the 2010 U.S. House of Represenatives races
}
\usage{data(houseRace10)}
\format{
  A data frame with 435 observations on the following 24 variables.
  \describe{
    \item{\code{id}}{Unique identifier for the race, which does not overlap with other 2010 races (see \code{\link{govRace10}} and \code{\link{senateRace10}})}
    \item{\code{state}}{State name}
    \item{\code{abbr}}{State name abbreviation}
    \item{\code{num}}{District number for the state}
    \item{\code{name1}}{Name of the winning candidate}
    \item{\code{perc1}}{Percentage of vote for winning candidate (if more than one candidate)}
    \item{\code{party1}}{Party of winning candidate}
    \item{\code{votes1}}{Number of votes for winning candidate}
    \item{\code{name2}}{Name of candidate with second most votes}
    \item{\code{perc2}}{Percentage of vote for candidate who came in second}
    \item{\code{party2}}{Party of candidate with second most votes}
    \item{\code{votes2}}{Number of votes for candidate who came in second}
    \item{\code{name3}}{Name of candidate with third most votes}
    \item{\code{perc3}}{Percentage of vote for candidate who came in third}
    \item{\code{party3}}{Party of candidate with third most votes}
    \item{\code{votes3}}{Number of votes for candidate who came in third}
    \item{\code{name4}}{Name of candidate with fourth most votes}
    \item{\code{perc4}}{Percentage of vote for candidate who came in fourth}
    \item{\code{party4}}{Party of candidate with fourth most votes}
    \item{\code{votes4}}{Number of votes for candidate who came in fourth}
    \item{\code{name5}}{Name of candidate with fifth most votes}
    \item{\code{perc5}}{Percentage of vote for candidate who came in fifth}
    \item{\code{party5}}{Party of candidate with fifth most votes}
    \item{\code{votes5}}{Number of votes for candidate who came in fifth}
  }
}
\details{
This analysis in the Examples section was inspired by and is similar to that of Nate Silver's district-level analysis on the FiveThirtyEight blog in the New York Times:

\url{http://fivethirtyeight.blogs.nytimes.com/2010/11/08/2010-an-aligning-election/}
}
\source{
Data was collected from MSNBC.com on November 9th, 2010.
}
\examples{
data(houseRace10)
hr <- table(houseRace10[,c("abbr", "party1")])
nr <- apply(hr, 1, sum)

data(prRace08)
pr   <- prRace08[prRace08$state != "DC",c("state", "pObama")]
hr   <- hr[as.character(pr$state),]
(fit <- glm(hr ~ pr$pObama, family=binomial))

x1 <- pr$pObama[match(houseRace10$abbr, pr$state)]
y1 <- (houseRace10$party1 == "Democrat")+0
g  <- glm(y1 ~ x1, family=binomial)


x  <- pr$pObama[pr$state != "DC"]
nr <- apply(hr, 1, sum)
plot(x, hr[,"Democrat"]/nr, pch=19, cex=sqrt(nr), col="#22558844", xlim=c(20, 80), ylim=c(0, 1), xlab="Percent vote for Obama in 2008", ylab="Probability of Democrat winning House seat")
X  <- seq(0, 100, 0.1)
lo <- -5.6079 + 0.1009*X
p  <- exp(lo)/(1+exp(lo))
lines(X, p)
abline(h=0:1, lty=2, col="#888888")
}
\keyword{datasets}