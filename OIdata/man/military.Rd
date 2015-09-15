\name{military}
\alias{military}
\docType{data}
\title{
US Military Demographics
}
\description{
This dataset contains demographic information on every member of the US armed forces including gender, race, and rank.
}
\usage{data(military)}
\format{
  A data frame with 1414593 observations on the following 6 variables.
  \describe{
    \item{\code{grade}}{The status of the service member as \code{enlisted} \code{officer} or \code{warrant officer}.}
    \item{\code{branch}}{The branch of the armed forces: \code{air force}, \code{army}, \code{marine corps}, \code{navy}.}
    \item{\code{gender}}{Whether the service member is \code{female} or \code{male}.}
    \item{\code{race}}{The race identified by the service member: \code{ami/aln} (american indian/alaskan native), \code{asian}, \code{black}, \code{multi} (multi-ethinic), \code{p/i} (pacific islander), \code{unk} (unknown), or \code{white}.}
    \item{\code{hisp}}{Whether a service member identifies with being hispanic (\code{TRUE}) or not (\code{FALSE}).}
    \item{\code{rank}}{The numeric rank of the service member (higher number indicates higher rank).}
  }
}
\details{
The branches covered by this data set include the Army, Navy, Air Force, and Marine Corps.  Demographic information on the Coast Guard is contained in the original data set but has not been included here.
}
\source{
Data provided by the Department of Defense and made available at \href{https://explore.data.gov/Population/Personnel-Trends-by-Gender-Race/zqae-ad8k}{data.gov}.  Retrieval date: Feb 20, 2012.
}
\references{OpenIntro, \href{http://www.openintro.org}{openintro.org}}
\examples{
data(military)
cond1 <- military$grade == "officer"
cond2 <- military$branch == "army"
cond3 <- military$gender == "female"
tabF  <- table(military$rank[cond1 & cond2 & cond3])
barplot((tabF/sum(tabF)), main = "female army officer ranks")
tabM  <- table(military$rank[cond1 & cond2 & !cond3])
barplot(tabM/sum(tabM), main = "male army officer ranks")

(tabFM <- table(military$branch, military$gender) /
          matrix(rep(table(military$branch), 2), ncol = 2))
barplot(tabFM[,1], main = "proportion female")
}
\keyword{datasets}
\keyword{military}
\keyword{demographics}
