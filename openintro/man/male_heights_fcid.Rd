\name{male_heights_fcid}
\alias{male_heights_fcid}
\docType{data}
\title{
  Random sample of adult male heights
}
\description{
  This sample is based on data from the
  USDA Food Commodity Intake Database.
}
\usage{data("male_heights_fcid")}
\format{
  A data frame with 100 observations on the following variable.
  \describe{
    \item{\code{height_inch}}{Height, in inches.}
  }
}
\source{
  Simulated based on data from USDA.
}
\examples{
data(male_heights_fcid)
histPlot(male_heights_fcid$height_inch)
}
\keyword{datasets}
