#'  Houses for sale in Duke Forest, Durham, NC in Nov 2020
#'
#'  Data on houses that were for sale in the Duke Forest neighborhood of
#'  Durham, NC in November 2020.
#'
#' @format A data frame with 98 rows and 13 variables.
#' \describe{
#'    \item{address}{Address of house.}
#'    \item{price}{Listing price, in USD.}
#'    \item{bed}{Number of bedrooms.}
#'    \item{bath}{Number of bathrooms.}
#'    \item{area}{Area of home, in square feet.}
#'    \item{type}{Type of home (all are Single Family).}
#'    \item{year_built}{Year the home was built.}
#'    \item{heating}{Heating sytem.}
#'    \item{cooling}{Cooling system (`central` or `other`).}
#'    \item{parking}{Type of parking available and number of parking spaces.}
#'    \item{lot}{Area of the entire property, in acres.}
#'    \item{hoa}{If the home belongs to an Home Owners Association, the associted fee (`NA` otherwise).}
#'    \item{url}{URL of the listing.}
#' }
#' @examples
#'
#' library(ggplot2)
#'
#' # Number of bedrooms and price
#' ggplot(duke_forest, aes(x = as.factor(bed), y = price)) +
#'   geom_boxplot() +
#'   labs(
#'     x = "Number of bedrooms",
#'     y = "Listing price (USD)",
#'     title = "Homes for sale in Duke Forest, Durham, NC",
#'     subtitle = "Data are from November 2020"
#'     )
#'
#' # Area and price
#' ggplot(duke_forest, aes(x = area, y = price)) +
#'   geom_point() +
#'   labs(
#'     x = "Area (square feet)",
#'     y = "Listing price (USD)",
#'     title = "Homes for sale in Duke Forest, Durham, NC",
#'     subtitle = "Data are from November 2020"
#'     )
#'
#' @source Data were collected from [Zillow.com](https://www.zillow.com/) in November 2020.
"duke_forest"
