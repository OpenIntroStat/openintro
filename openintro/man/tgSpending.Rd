\name{tgSpending}
\alias{tgSpending}
\docType{data}
\title{
Thanksgiving spending, simulated based on Gallup poll.
}
\description{
This entry gives simulated spending data for Americans during Thanksgiving in 2009 based on findings of a Gallup poll.
}
\usage{data(tgSpending)}
\format{
  A data frame with 436 observations on the following 1 variable.
  \describe{
    \item{\code{spending}}{Amount of spending, in US dollars.}
  }
}
\examples{
data(tgSpending)
histPlot(tgSpending$spending)
}
\keyword{datasets, histogram, distribution}
