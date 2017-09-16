\name{ppp.201503}
\alias{ppp.201503}
\alias{ppp_201503}
\docType{data}
\title{
  US Poll on who it is better to raise taxes on
}
\description{
  A poll of 691 people, with party affiliation collected, asked whether
  they think it's better to raise taxes on the rich or raise taxes on the poor.
}
\usage{data("ppp.201503")}
\format{
  A data frame with 691 observations on the following 2 variables.
  \describe{
    \item{\code{party}}{Political party affiliation.}
    \item{\code{taxes}}{Support for who to raise taxes on.}
  }
}
\source{
  Public Policy Polling, Americans on College Degrees,
  Classic Literature, the Seasons, and More, data collected Feb 20-22, 2015. 
}
\examples{
data(ppp.201503)
table(ppp.201503)
mosaicplot(table(ppp.201503), las = 1)
}
\keyword{datasets}
