% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-duke_forest.R
\docType{data}
\name{duke_forest}
\alias{duke_forest}
\title{Sale prices of houses in Duke Forest, Durham, NC}
\format{
A data frame with 98 rows and 13 variables.
\describe{
\item{address}{Address of house.}
\item{price}{Sale price, in USD.}
\item{bed}{Number of bedrooms.}
\item{bath}{Number of bathrooms.}
\item{area}{Area of home, in square feet.}
\item{type}{Type of home (all are Single Family).}
\item{year_built}{Year the home was built.}
\item{heating}{Heating sytem.}
\item{cooling}{Cooling system (\code{other} or \code{central}).}
\item{parking}{Type of parking available and number of parking spaces.}
\item{lot}{Area of the entire property, in acres.}
\item{hoa}{If the home belongs to an Home Owners Association, the associted fee (\code{NA} otherwise).}
\item{url}{URL of the listing.}
}
}
\source{
Data were collected from Zillow in November 2020.
}
\usage{
duke_forest
}
\description{
Data on houses that were recently sold in the Duke Forest neighborhood of
Durham, NC in November 2020.
}
\examples{

library(ggplot2)

# Number of bedrooms and price
ggplot(duke_forest, aes(x = as.factor(bed), y = price)) +
  geom_boxplot() +
  labs(
    x = "Number of bedrooms",
    y = "Sale price (USD)",
    title = "Homes for sale in Duke Forest, Durham, NC",
    subtitle = "Data are from November 2020"
  )

# Area and price
ggplot(duke_forest, aes(x = area, y = price)) +
  geom_point() +
  labs(
    x = "Area (square feet)",
    y = "Sale price (USD)",
    title = "Homes for sale in Duke Forest, Durham, NC",
    subtitle = "Data are from November 2020"
  )
}
\keyword{datasets}
