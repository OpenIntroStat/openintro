\name{hw.k01}
\alias{hw.k01}
\alias{hw.k05}
\alias{hw.k10}
\docType{data}
\title{
Constants for Hall-Wellner confidence bounds
}
\description{
Constants for identifying appropriate Hall-Wellner confidence bounds for survival data.
}
\usage{
  data(hw.k01)
  data(hw.k05)
  data(hw.k10)
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
data(hw.k01)
hw.k01['0.76', '0.12'] # 1.6261

data(hw.k05)
hw.k05['0.76', '0.12'] # 1.3544

data(hw.k10)
hw.k10['0.76', '0.12'] # 1.2182
}
\keyword{datasets}
