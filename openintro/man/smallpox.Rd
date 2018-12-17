\name{smallpox}
\alias{smallpox}
\docType{data}
\title{
  Smallpox vaccine results
}
\description{
  A sample of 6,224 individuals from the year 1721 who were
  exposed to smallpox in Boston.
  Some of them had received a vaccine (inoculated) while others
  had not.
  Doctors at the time believed that inoculation, which involves
  exposing a person to the disease in a controlled form, could
  reduce the likelihood of death.
}
\usage{data("smallpox")}
\format{
  A data frame with 6224 observations on the following 2 variables.
  \describe{
    \item{\code{result}}{Whether the person \code{died} or \code{lived}.}
    \item{\code{inoculated}}{Whether the person received inoculated.}
  }
}
\source{
  Fenner F. 1988.
  Smallpox and Its Eradication
  (History of International Public Health, No. 6).
  Geneva: World Health Organization. ISBN 92-4-156110-6.
}
\examples{
data(smallpox)
table(smallpox)
}
\keyword{datasets}
