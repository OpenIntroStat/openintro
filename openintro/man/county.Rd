\name{county}
\alias{county}
\docType{data}
\title{United States Counties}
\description{
  Data for 3142 counties in the United States. See the
  \code{\link{county_complete}} data set for additional variables.
}
\usage{data(county)}
\format{
  A data frame with 3142 observations on the following 14 variables.
  \describe{
    \item{\code{name}}{County names.}
    \item{\code{state}}{State names.}
    \item{\code{pop2000}}{Population in 2000.}
    \item{\code{pop2010}}{Population in 2010.}
    \item{\code{pop2017}}{Population in 2017.}
    \item{\code{pop_change}}{Population change from 2010 to 2017.}
    \item{\code{poverty}}{Percent of population in poverty in 2017.}
    \item{\code{homeownership}}{Homeownership rate, 2006-2010.}
    \item{\code{multi_unit}}{Percent of housing units in
        multi-unit structures, 2006-2010.}
    \item{\code{unemployment_rate}}{Unemployment rate in 2017.}
    \item{\code{metro}}{Whether the county contains a metropolitan area.}
    \item{\code{median_edu}}{Median education level (2013-2017).}
    \item{\code{per_capita_income}}{Per capita (per person) income (2013-2017).}
    \item{\code{median_hh_income}}{Median household income.}
    \item{\code{smoking_ban}}{Describes whether the type of
          county-level smoking ban in place in 2010,
          taking one of the values \code{"none"},
          \code{"partial"}, or \code{"comprehensive"}.}
  }
}
\source{
These data were collected from http://quickfacts.census.gov/qfd/states/ (no longer available) and its accompanying pages.
}
\references{
~~ OpenIntro Statistics, \href{http://www.openintro.org/stat}{openintro.org} ~~
}
\seealso{\code{\link{county_complete}}}
\examples{
data(county)
dim(county)
head(county)

}
\keyword{datasets}
