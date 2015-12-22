\name{ami.occurrences}
\alias{ami.occurrences}
\docType{data}
\title{Acute Myocardial Infarction (Heart Attack) Events}
\description{This data set is simulated but contains realistic occurrences of AMI in NY City.}
\usage{data("ami.occurrences")}
\format{
  A data frame with 365 observations on the following variable.
  \describe{
    \item{\code{ami}}{a numeric vector}
  }
}
\examples{
data(ami.occurrences)
table(ami.occurrences)
barplot(table(ami.occurrences))
}
\keyword{datasets}
