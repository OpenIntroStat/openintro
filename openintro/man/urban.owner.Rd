\name{urban.owner}
\alias{urban.owner}
\docType{data}
\title{Summary of many state-level variables}
\description{Census data for the 50 states plus DC and Puerto Rico.}
\usage{data("urban.owner")}
\format{
  A data frame with 52 observations on the following 28 variables.
  \describe{
    \item{\code{state}}{State}
    \item{\code{total_housing_units_2000}}{Total housing units available in 2000.}
    \item{\code{total_housing_units_2010}}{Total housing units available in 2010.}
    \item{\code{pct_vacant}}{a numeric vector}
    \item{\code{occupied}}{Occupied.}
    \item{\code{pct_owner_occupied}}{a numeric vector}
    \item{\code{pop_st}}{a numeric vector}
    \item{\code{area_st}}{a numeric vector}
    \item{\code{pop_urban}}{a numeric vector}
    \item{\code{poppct_urban}}{a numeric vector}
    \item{\code{area_urban}}{a numeric vector}
    \item{\code{areapct_urban}}{a numeric vector}
    \item{\code{popden_urban}}{a numeric vector}
    \item{\code{pop_ua}}{a numeric vector}
    \item{\code{poppct_urban.1}}{a numeric vector}
    \item{\code{area_ua}}{a numeric vector}
    \item{\code{areapct_ua}}{a numeric vector}
    \item{\code{popden_ua}}{a numeric vector}
    \item{\code{pop_uc}}{a numeric vector}
    \item{\code{poppct_uc}}{a numeric vector}
    \item{\code{area_uc}}{a numeric vector}
    \item{\code{areapct_uc}}{a numeric vector}
    \item{\code{popden_uc}}{a numeric vector}
    \item{\code{pop_rural}}{a numeric vector}
    \item{\code{poppct_rural}}{a numeric vector}
    \item{\code{area_rural}}{a numeric vector}
    \item{\code{areapct_rural}}{a numeric vector}
    \item{\code{popden_rural}}{a numeric vector}
  }
}
\source{US Census.}
\examples{
data(urban.owner)
## maybe str(urban.owner) ; plot(urban.owner) ...
}
\keyword{datasets}