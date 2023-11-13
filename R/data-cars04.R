#' cars04
#'
#' A data frame with 428 rows and 19 columns. This is a record of characteristics on all of the new models of cars for sale in the US in the year 2004.
#'
#'
#' @name cars04
#' @docType data
#' @format A data frame with 428 observations on the following 19 variables.
#' \describe{
#'   \item{name}{The name of the vehicle including manufacturer and model.}
#'   \item{sports_car}{Logical variable indicating if the vehicle is a sports car.}
#'   \item{suv}{Logical variable indicating if the vehicle is an suv.}
#'   \item{wagon}{Logical variable indicating if the vehicle is a wagon.}
#'   \item{minivan}{Logical variable indicating if the vehicle is a minivan.}
#'   \item{pickup}{Logical variable indicating if the vehicle is a pickup.}
#'   \item{all_wheel}{Logical variable indicating if the vehicle is all-wheel drive.}
#'   \item{rear_wheel}{Logical variable indicating if the vehicle is rear-wheel drive.}
#'   \item{msrp}{Manufacturer suggested retail price of the vehicle.}
#'   \item{dealer_cost}{Amount of money the dealer paid for the vehicle.}
#'   \item{eng_size}{Displacement of the engine - the total volume of all the cylinders, measured in liters.}
#'   \item{ncyl}{Number of cylinders in the engine.}
#'   \item{horsepwr}{Amount of horsepower produced by the engine.}
#'   \item{city_mpg}{Gas mileage for city driving, measured in miles per gallon.}
#'   \item{hwy_mpg}{Gas mileage for highway driving, measured in miles per gallon.}
#'   \item{weight}{Total weight of the vehicle, measured in pounds.}
#'   \item{wheel_base}{Distance between the center of the front wheels and the center of the rear wheels, measured in inches.}
#'   \item{length}{Total length of the vehicle, measured in inches.}
#'   \item{width}{Total width of the vehicle, measured in inches.}
#' }
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' # Highway gas mileage
#' ggplot(cars04, aes(x = hwy_mpg)) +
#'   geom_histogram(
#'     bins = 15, color = "white",
#'     fill = openintro::IMSCOL["green", "full"]
#'   ) +
#'   theme_minimal() +
#'   labs(
#'     title = "Highway gas milage for cars from 2004",
#'     x = "Gas Mileage (miles per gallon)",
#'     y = "Number of cars"
#'   )
"cars04"
