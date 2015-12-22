\name{immigration}
\alias{immigration}
\docType{data}
\title{Poll on illegal workers in the US}
\description{910 randomly sampled registered voters in Tampa, FL were asked if they thought workers who have illegally entered the US should be (i) allowed to keep their jobs and apply for US citizenship, (ii) allowed to keep their jobs as temporary guest workers but not allowed to apply for US citizenship, or (iii) lose their jobs and have to leave the country as well as their political ideology.}
\usage{data("immigration")}
\format{
  A data frame with 910 observations on the following 2 variables.
  \describe{
    \item{\code{response}}{a factor with levels \code{Apply for citizenship} \code{Guest worker} \code{Leave the country} \code{Not sure}}
    \item{\code{political}}{a factor with levels \code{conservative} \code{liberal} \code{moderate}}
  }
}
\source{SurveyUSA, News Poll #18927, data collected Jan 27-29, 2012.}
\examples{
data(immigration)
## maybe str(immigration) ; plot(immigration) ...
}
\keyword{datasets}
