\name{full.body.scan}
\alias{full.body.scan}
\docType{data}
\title{Poll about use of full-body airport scanners}
\description{Poll about use of full-body airport scanners, where about 4-in-5 people supported the use of the scanners.}
\usage{data("full.body.scan")}
\format{
  A data frame with 1137 observations on the following 2 variables.
  \describe{
    \item{\code{answer}}{a factor with levels \code{do not know / no answer} \code{should} \code{should not}}
    \item{\code{party.affiliation}}{a factor with levels \code{Democrat} \code{Independent} \code{Republican}}
  }
}
\source{S. Condon. Poll: 4 in 5 Support Full-Body Airport Scanners. In: CBS News (2010).}
\examples{
data(full.body.scan)
## maybe str(full.body.scan) ; plot(full.body.scan) ...
}
\keyword{datasets}
