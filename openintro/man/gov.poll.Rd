\name{gov.poll}
\alias{gov.poll}
\docType{data}
\title{Pew Research poll on goverment approval ratings}
\description{The poll's focus is on Obama and then Democrats and Republicans in Congress.}
\usage{data("gov.poll")}
\format{
  A data frame with 4223 observations on the following 2 variables.
  \describe{
    \item{\code{poll}}{a factor with levels \code{approve} \code{disapprove}}
    \item{\code{eval}}{a factor with levels \code{Democrats} \code{Obama} \code{Republicans}}
  }
}
\source{See the Pew Research website: www.people-press.org/2012/03/14/romney-leads-gop-contest-trails-in- matchup-with-obama. The counts in Table 6.19 are approximate.}
\examples{
data(gov.poll)
## maybe str(gov.poll) ; plot(gov.poll) ...
}
\keyword{datasets}
