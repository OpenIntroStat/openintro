#' Names of pets in Seattle
#'
#' Names of registered pets in Seattle, WA, between 2003 and 2018,
#' provided by the city's Open Data Portal.
#'
#'
#' @name seattlepets
#' @docType data
#' @format A data frame with 52,519 rows and 7 variables:
#' \describe{
#'   \item{license_issue_date}{Date the animal was registered with Seattle}
#'   \item{license_number}{Unique license number}
#'   \item{animal_name}{Animal's name}
#'   \item{species}{Animal's species (dog, cat, goat, etc.)}
#'   \item{primary_breed}{Primary breed of the animal}
#'   \item{secondary_breed}{Secondary breed if mixed}
#'   \item{zip_code}{Zip code animal is registered in}
#'   }
#' @source These data come from Seattle's Open Data Portal, \url{https://data.seattle.gov/Community/Seattle-Pet-Licenses/jguv-t9rb}
#' @keywords datasets
"seattlepets"
