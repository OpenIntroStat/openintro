\name{husbands.wives}
\alias{husbands.wives}
\docType{data}
\title{Married couples in Great Britain}
\description{The Great Britain Office of Population Census and Surveys collected a random sample of 170 married couples in Britain.}
\usage{data("husbands.wives")}
\format{
  A data frame with 199 observations on the following 8 variables.
  \describe{
    \item{\code{Age_Husband}}{a numeric vector}
    \item{\code{Ht_Husband}}{a numeric vector}
    \item{\code{Age_Wife}}{a numeric vector}
    \item{\code{Ht_Wife}}{a numeric vector}
    \item{\code{Age_Husb_at_Marriage}}{a numeric vector}
    \item{\code{Years_Married}}{a numeric vector}
    \item{\code{Age_Wife_At_Marriage}}{a numeric vector}
    \item{\code{Duration}}{a factor with levels \code{<= 20} \code{>20}}
  }
}
\source{D.J. Hand. A handbook of small data sets. Chapman & Hall/CRC, 1994.}
\examples{
data(husbands.wives)
## maybe str(husbands.wives) ; plot(husbands.wives) ...
}
\keyword{datasets}
