\name{family_college}
\alias{family_college}
\docType{data}
\title{
  Simulated sample of parent / teen college attendance
}
\description{
  A simulated data set based on real population summaries.
}
\usage{data("family_college")}
\format{
  A data frame with 792 observations on the following 2 variables.
  \describe{
    \item{\code{teen}}{Whether the teen goes to \code{college} or \code{not}.}
    \item{\code{parents}}{Whether the parent holds a college \code{degree}
    	    or \code{not}.}
  }
}
\source{
  Simulation based off of summary information provided at
  \url{http://nces.ed.gov/pubs2001/2001126.pdf}
}
\examples{
data(family_college)
table(family_college)
}
\keyword{datasets}
