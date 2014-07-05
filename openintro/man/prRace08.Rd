\name{prRace08}
\alias{prRace08}
\docType{data}
\title{
Election results for the 2008 U.S. Presidential race
}
\description{
Election results for the 2008 U.S. Presidential race
}
\usage{data(prRace08)}
\format{
  A data frame with 51 observations on the following 7 variables.
  \describe{
    \item{\code{state}}{State name abbreviation}
    \item{\code{stateFull}}{Full state name}
    \item{\code{nObama}}{Number of votes for Barack Obama}
    \item{\code{pObama}}{Proportion of votes for Barack Obama}
    \item{\code{nMcCain}}{Number of votes for John McCain}
    \item{\code{pMcCain}}{Proportion of votes for John McCain}
    \item{\code{elVotes}}{Number of electoral votes for a state}
  }
}
\details{
In Nebraska, 4 electoral votes went to McCain and 1 to Obama. Otherwise the electoral votes were a winner-take-all.
}
\source{
Presidential Election of 2008, Electoral and Popular Vote Summary, collected on April 21, 2011 from

\url{http://www.infoplease.com/us/government/presidential-election-vote-summary.html}
}
\examples{
#===> Obtain 2010 US House Election Data <===#
data(houseRace10)
hr <- table(houseRace10[,c("abbr", "party1")])
nr <- apply(hr, 1, sum)

#===> Obtain 2008 President Election Data <===#
data(prRace08)
pr   <- prRace08[prRace08$state != "DC",c("state", "pObama")]
hr   <- hr[as.character(pr$state),]
(fit <- glm(hr ~ pr$pObama, family=binomial))

#===> Visualizing Binomial outcomes <===#
x  <- pr$pObama[pr$state != "DC"]
nr <- apply(hr, 1, sum)
plot(x, hr[,"Democrat"]/nr, pch=19, cex=sqrt(nr), col="#22558844",
    xlim=c(20, 80), ylim=c(0, 1), xlab="Percent vote for Obama in 2008",
    ylab="Probability of Democrat winning House seat")

#===> Logistic Regression <===#
x1 <- pr$pObama[match(houseRace10$abbr, pr$state)]
y1 <- (houseRace10$party1 == "Democrat")+0
g  <- glm(y1 ~ x1, family=binomial)
X  <- seq(0, 100, 0.1)
lo <- -5.6079 + 0.1009*X
p  <- exp(lo)/(1+exp(lo))
lines(X, p)
abline(h=0:1, lty=2, col="#888888")
}
\keyword{datasets}
\keyword{election}
\keyword{2008}
\keyword{president}
\keyword{United States}
