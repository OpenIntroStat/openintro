\name{yawn}
\alias{yawn}
\docType{data}
\title{Contagiousness of yawning}
\description{An experiment conducted by the MythBusters, a science entertainment TV program on the Discovery Channel, tested if a person can be subconsciously influenced into yawning if another person near them yawns. 50 people were randomly assigned to two groups: 34 to a group where a person near them yawned (treatment) and 16 to a group where there wasn't a person yawning near them (control).}
\usage{data("yawn")}
\format{
  A data frame with 50 observations on the following 2 variables.
  \describe{
    \item{\code{result}}{a factor with levels \code{not yawn} \code{yawn}}
    \item{\code{group}}{a factor with levels \code{ctrl} \code{trmt}}
  }
}
\source{MythBusters, Season 3, Episode 28.}
\examples{
data(yawn)
## maybe str(yawn) ; plot(yawn) ...
}
\keyword{datasets}