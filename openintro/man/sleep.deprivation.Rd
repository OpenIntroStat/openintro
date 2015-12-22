\name{sleep.deprivation}
\alias{sleep.deprivation}
\docType{data}
\title{Survey on sleep deprivation and transportation workers}
\description{The National Sleep Foundation conducted a survey on the sleep habits of randomly sampled transportation workers and a control sample of non-transportation workers.}
\usage{data("sleep.deprivation")}
\format{
  A data frame with 1087 observations on the following 2 variables.
  \describe{
    \item{\code{sleep}}{a factor with levels \code{<6} \code{>8} \code{6-8}}
    \item{\code{profession}}{a factor with levels \code{bus / taxi / limo drivers} \code{control} \code{pilots} \code{train operators} \code{truck drivers}}
  }
}
\source{National Sleep Foundation, 2012 Sleep in America Poll: Transportation Workers' Sleep, 2012.
  https://sleepfoundation.org/sleep-polls-data/sleep-in-america-poll/2012-transportation-workers-and-sleep}
\examples{
data(sleep.deprivation)
## maybe str(sleep.deprivation) ; plot(sleep.deprivation) ...
}
\keyword{datasets}