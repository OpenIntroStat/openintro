\name{helmet}
\alias{helmet}
\docType{data}
\title{
  Socioeconomic status and reduced-fee school lunches
}
\description{
  Examining the relationship between socioeconomic status
  measured as the percentage of children in a neighborhood
  receiving reduced-fee lunches at school (lunch) and the
  percentage of bike riders in the neighborhood wearing
  helmets (helmet). 
}
\usage{data("helmet")}
\format{
  A data frame with 12 observations representing neighborhoods on the following 2 variables.
  \describe{
    \item{\code{lunch}}{Percent of students receiving reduced-fee school lunches.}
    \item{\code{helmet}}{Percent of bike riders wearing helmets.}
  }
}
\examples{
data(helmet)
plot(helmet)
}
\keyword{datasets}
