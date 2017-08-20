\name{nuclear.survey}
\alias{nuclear.survey}
\docType{data}
\title{Nuclear Arms Reduction Survey}
\description{
  A simple random sample of 1,028 US adults in March 2013 found that 56\% support nuclear arms reduction.
}
\usage{data("nuclear.survey")}
\format{
  A data frame with 1028 observations on the following variable.
  \describe{
    \item{\code{arms_reduction}}{Responses of \code{favor} or \code{against}.}
  }
}
\source{
  \url{www.gallup.com/poll/161198/favor-russian-nuclear-arms-reductions.aspx}
}
\examples{
data(nuclear.survey)
table(nuclear.survey)
}
\keyword{datasets}
