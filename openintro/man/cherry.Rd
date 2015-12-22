\name{cherry}
\alias{cherry}
\docType{data}
\title{Summary information for 31 cherry trees}
\description{Researchers wanting to understand the relationship between these variables for black cherry trees collected data from 31 trees in the Allegheny National Forest, Pennsylvania.}
\usage{data("cherry")}
\format{
  A data frame with 31 observations on the following 3 variables.
  \describe{
    \item{\code{Diam}}{diameter in inches (at 54 inches above ground)}
    \item{\code{Height}}{height is measured in feet}
    \item{\code{Volume}}{volume in cubic feet}
  }
}
\source{D.J. Hand. A handbook of small data sets. Chapman & Hall/CRC, 1994.}
\examples{
data(cherry)
model <- lm(Volume ~ Diam + Height, cherry)
summary(model)
plot(model)
}
\keyword{datasets}
