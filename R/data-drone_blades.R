#' Quadcopter Drone Blades
#'
#' Quality control data set for quadcopter drone blades, where this data has
#' been made up for an example.
#'
#'
#' @name drone_blades
#' @docType data
#' @format A data frame with 2000 observations on the following 2 variables.
#' \describe{
#'   \item{supplier}{The supplier for the blade.}
#'   \item{inspection}{The inspection conclusion.}
#'   }
#' @references OpenIntro Statistics, Third Edition and Fourth Edition.
#' @keywords datasets
#' @examples
#'
#' library(dplyr)
#'
#' drone_blades %>%
#'   count(supplier, inspection)
#'
"drone_blades"
