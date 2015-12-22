\name{dream}
\alias{dream}
\docType{data}
\title{Survey on views of the DREAM Act}
\description{A SurveyUSA poll.}
\usage{data("dream")}
\format{
  A data frame with 910 observations on the following 2 variables.
  \describe{
    \item{\code{ideology}}{a factor with levels \code{Conservative} \code{Liberal} \code{Moderate}}
    \item{\code{stance}}{a factor with levels \code{No} \code{Not sure} \code{Yes}}
  }
}
\source{SurveyUSA, News Poll #18927, data collected Jan 27-29, 2012.}
\examples{
data(dream)
table(dream)
}
\keyword{datasets}
