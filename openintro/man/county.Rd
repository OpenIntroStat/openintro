\name{county}
\alias{county}
\docType{data}
\title{
United States Counties
}
\description{
Data for 3143 counties in the United States. See the \code{\link{countyComplete}} data set for additional variables.
}
\usage{data(county)}
\format{
  A data frame with 3143 observations on the following 15 variables.
  \describe{
    \item{\code{name}}{County names.}
    \item{\code{state}}{State names.}
%    \item{\code{FIPS}}{FIPS number.}
    \item{\code{pop2000}}{Population in 2000.}
    \item{\code{pop2010}}{Population in 2010.}
    \item{\code{fed_spend}}{Federal spending per capita}
    \item{\code{poverty}}{Percent of population in poverty.}
    \item{\code{homeownership}}{Homeownership rate, 2006-2010.}
    \item{\code{multiunit}}{Percent of housing units in multi-unit structures, 2006-2010.}
    \item{\code{income}}{Income per capita income.}
    \item{\code{med_income}}{Median income.}
%    \item{\code{age_5}}{Percent of population under 5 years of age.}
%    \item{\code{age_18}}{Percent of population under 18 years of age.}
%    \item{\code{female}}{Percent of population that is female.}
%    \item{\code{density}}{The number of people per square mile.}
%    \item{\code{white}}{Percent of population that is white.}
%    \item{\code{black}}{Percent of population that is black.}
%    \item{\code{pph}}{Average persons per household.}
  }
}
\source{
These data were collected from http://quickfacts.census.gov/qfd/states/ (no longer available) and its accompanying pages.
}
\references{
~~ OpenIntro Statistics, \href{http://www.openintro.org/stat}{openintro.org} ~~
}
\seealso{ \code{\link{email}}, \code{\link{email50}}, \code{\link{countyComplete}} }
\examples{
data(county)

p00 <- county$pop2000
p10 <- county$pop2010
hist((p10 - p00)/p00)
}
\keyword{datasets}
