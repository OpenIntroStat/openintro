\name{vote.nsa}
\alias{vote.nsa}
\docType{data}
\title{Predicting Who'd Vote for NSA Mass Surveillance}
\description{
  In 2013, the House of Representatives voted to not stop the National
  Security Agency's (NSA's) mass surveillance of phone behaviors.
  We look at two predictors for how a representative voted: their party
  and how much money they have received from the private defense
  industry.
}
\usage{data("vote.nsa")}
\format{
  A data frame with 434 observations on the following 5 variables.
  \describe{
    \item{\code{name}}{Name of the Congressional representative.}
    \item{\code{party}}{The party of the representative:
      \code{D} for Democrat and \code{R} for Republican.}
    \item{\code{state}}{State for the representative.}
    \item{\code{money}}{Money received from the defense industry
      for their campaigns.}
    \item{\code{phone.spy.vote}}{Voting to rein in the phone
      dragnet or continue allowing mass surveillance.}
  }
}
\source{
  Maplight (\url{maplight.org}).
  \url{http://s3.documentcloud.org/documents/741074/amash-amendment-vote-maplight.pdf}
}
\references{
  Article by Wired: \emph{Lawmakers Who Upheld NSA Phone Spying Received Double the Defense Industry Cash}.
  \url{http://www.wired.com/threatlevel/2013/07/money-nsa-vote/}

}
\examples{
data(vote.nsa)
table(vote.nsa$party, vote.nsa$phone.spy.vote)
boxplot(vote.nsa$money / 1000 ~ vote.nsa$phone.spy.vote,
        ylab = "$1000s Received from Defense Industry")
}
\keyword{datasets}
