\name{thanksgiving.spend}
\alias{thanksgiving.spend}
\alias{thanksgiving_spend}
\alias{tgSpending}
\docType{data}
\title{
Thanksgiving spending, simulated based on Gallup poll.
}
\description{
This entry gives simulated spending data for Americans during Thanksgiving in 2009 based on findings of a Gallup poll.
}
\usage{data(thanksgiving.spend)}
\format{
  A data frame with 436 observations on the following 1 variable.
  \describe{
    \item{\code{spending}}{Amount of spending, in US dollars.}
  }
}
\examples{
data(thanksgiving.spend)
histPlot(thanksgiving.spend$spending)
}
\keyword{datasets, histogram, distribution}
