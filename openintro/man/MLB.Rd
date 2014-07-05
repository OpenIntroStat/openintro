\name{MLB}
\alias{MLB}
\docType{data}
\title{ Salary data for Major League Baseball (2010) }
\description{ Salary data for Major League Baseball players in the year 2010. }
\usage{data(MLB)}
\format{
  A data frame with 828 observations on the following 4 variables.
  \describe{
    \item{\code{player}}{Player name}
    \item{\code{team}}{Team}
    \item{\code{position}}{Field position}
    \item{\code{salary}}{Salary (in $1000s)}
  }
}
\source{
Collected from the following page (and its linked pages) on February 23rd, 2011:

\url{http://content.usatoday.com/sportsdata/baseball/mlb/salaries/team}
}
\examples{
data(MLB)

#=====> Basic Histogram <=====#
hist(MLB$salary/1000, main="", breaks=15, xlab="Salary (millions of dollars)", axes=FALSE, ylab="", col="#22558844")
axis(1, seq(0, 40, 10))
axis(2, c(0, 500))
axis(2, seq(100, 400, 100), rep("", 4), tcl=-0.2)

#=====> Histogram on Log Scale <=====#
hist(log(MLB$salary/1000), main="", breaks=15, xlab="log(Salary)", axes=FALSE, ylab="", col="#22558844")
axis(1) #, seq(0, 40, 10))
axis(2, seq(0, 300, 100))

#=====> Box plot of log(salary) against position <=====#
par(las=1, mar=c(4, 8, 1, 1))
boxPlot(log(MLB$salary/1000), MLB$position, horiz=TRUE, ylab="")
}
\keyword{datasets}
