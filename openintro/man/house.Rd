\name{house}
\alias{house}
\docType{data}
\title{
United States House of Representatives historical make-up
}
\description{
The make-up of the United States House of Representatives every two years since 1789. The last Congress included is the 112th Congress, which completes its term in 2013.
}
\usage{data(house)}
\format{
  A data frame with 112 observations on the following 12 variables.
  \describe{
    \item{\code{congress}}{The number of that year's Congress}
    \item{\code{yearStart}}{Starting year}
    \item{\code{yearEnd}}{Ending year}
    \item{\code{seats}}{Total number of seats}
    \item{\code{p1}}{Name of the first political party}
    \item{\code{np1}}{Number of seats held by the first political party}
    \item{\code{p2}}{Name of the second political party}
    \item{\code{np2}}{Number of seats held by the second political party}
    \item{\code{other}}{Other}
    \item{\code{vac}}{Vacancy}
    \item{\code{del}}{Delegate}
    \item{\code{res}}{Resident commissioner}
  }
}
\source{
Office of the Clerk of the U.S. House of Representatives Party Divisions:

\url{http://clerk.house.gov/art_history/house_history/partyDiv.html}

Data for Congresses 1-111 was recorded from the website above on November 1st, 2010. It appears this page was later moved to

\url{http://artandhistory.house.gov/house_history/partyDiv.aspx}

where data for Congress 112 was recorded on April 21, 2011.
}
\examples{
data(house)

#=====> Examine two-party relationship since 1855 <=====#
these <- 34:112
COL   <- c("#EEDDBB", "#DDEEBB", "#DDDDDD",
           "#BBDDEE", "#EEE5E5", "#EECCCC")
party <- c("#2222FF", "#FF2222")
par(las=1)
plot(house$yearStart[these], 100*house$np1[these]/house$seats[these],
      type="n", xlab="Year", ylab="Percent of House seats", ylim=c(11, 93))
rect(1861.3, -1000, 1865.3, 1000, col=COL[1], border="#FFFFFF")
rect(1914.5, -1000, 1918.9, 1000, col=COL[2], border="#FFFFFF")
rect(1929, -1000, 1939, 1000, col=COL[3], border="#FFFFFF")
rect(1939.7, -1000, 1945.6, 1000, col=COL[4], border="#FFFFFF")
rect(1955.8, -1000, 1965.3, 1000, col=COL[5], border="#E2E2E2")
rect(1965.3, -1000, 1975.4, 1000, col=COL[6], border="#E2E2E2")
lines(house$yearStart[these], 100*house$np1[these]/house$seats[these],
      col=party[1])
lines(house$yearStart[these], 100*house$np2[these]/house$seats[these],
      col=party[2])
legend("topleft", lty=c(1,1), col=party,
      c("Democrats", "Republicans"), bg="#FFFFFF")
legend("topright", fill=COL,
      c("Civil War", "World War I", "Great Depression", "World War II",
        "Vietnam War Start", "Vietnam War Escalated"),
      bg="#FFFFFF", border="#FFFFFF")
}
\keyword{datasets}
