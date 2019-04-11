\name{ep.c01}
\alias{ep.c01}
\alias{ep.c05}
\alias{ep.c10}
\docType{data}
\title{
Constants for EP confidence bounds
}
\description{
Constants for identifying appropriate EP confidence bounds for survival data.
}
\usage{
  data(ep.c01)
  data(ep.c05)
  data(ep.c10)
}
\format{
  A matrix, where row and column names correspond to a_U and a_L, respectively.
}
\source{
Klein JP, Moeschberger ML (2003). Survival Analysis: Techniques for Censored and Truncated Data. Springer Verlag, New York.
}
\references{
Klein JP, Moeschberger ML (2003). Survival Analysis: Techniques for Censored and Truncated Data. Springer Verlag, New York.
}
\seealso{
\code{\link{confBands}}, \code{\link{hw.k01}}
}
\examples{
data(ep.c01)
ep.c01['0.76', '0.12'] # 3.4944

data(ep.c05)
ep.c05['0.76', '0.12'] # 2.9489

data(ep.c10)
ep.c10['0.76', '0.12'] # 2.6633
}
\keyword{datasets}
\keyword{confidence bands}
\keyword{survival analysis}
\keyword{constants}