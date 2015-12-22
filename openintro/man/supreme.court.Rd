\name{supreme.court}
\alias{supreme.court}
\docType{data}
\title{Supreme Court approval rating}
\description{Summary of a random survey of 976 people.}
\usage{data("supreme.court")}
\format{
  A data frame with 976 observations on the following variable.
  \describe{
    \item{\code{answer}}{a factor with levels \code{approve} \code{not}}
  }
}
\source{http://www.nytimes.com/2012/06/08/us/politics/44-percent-of-americans-approve-of-supreme-court-in-new-poll.html}
\examples{
data(supreme.court)
## maybe str(supreme.court) ; plot(supreme.court) ...
}
\keyword{datasets}