\name{husbands.wives}
\alias{husbands.wives}
\alias{husbands_wives}
\docType{data}
\title{
  Great Britain: husband and wife pairs
}
\description{
  The Great Britain Office of Population Census and Surveys
  once collected data on a random sample of 170 married
  couples in Britain, recording the age (in years) and heights
  of the husbands and wives.
}
\usage{data("husbands.wives")}
\format{
  A data frame with 199 observations on the following 8 variables.
  \describe{
    \item{\code{age_husband}}{Age of husband.}
    \item{\code{age_wife}}{Age of wife.}
    \item{\code{ht_husband}}{Height of husband (mm).}
    \item{\code{ht_wife}}{Height of wife (mm).}
    \item{\code{age_husb_at_marriage}}{Age of husband at the time they married.}
    \item{\code{age_wife_at_marriage}}{Age of wife at the time they married.}
    \item{\code{years_married}}{Number of years married.}
  }
}
\source{
  Hand DJ. 1994. A handbook of small data sets. Chapman & Hall/CRC.
}
\examples{
data(husbands.wives)
plot(husbands.wives$ht_husband, husbands.wives$ht_wife)
}
\keyword{datasets}
