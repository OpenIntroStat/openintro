#' A dataset to study the relationship between species abundance of birds and habitat features.
#'
#' Contains a subset of the variables from a larger 1987 study analyzing
#' the effect of habitat fragmentation on bird abundance in the
#' Latrobe Valley of southeastern Victoria, Australia.
#' Habitat fragmentation is the process in which land development disrupts the
#' native habitat of certain species.
#' The dataset has variables on forest bird abundance in a forest patch
#' (typically the response of interest) and features of patch.
#'
#' @name forest.birds
#' @docType data
#' @format A tibble with 56 rows and 8 variables:
#' \describe{
#'     \item{\code{abundance}}{Numeric vector. Average number of forest birds observed
#'     in the patch, as calculated from several independent 20-minute counting sessions.}
#'     \item{\code{patch.area}}{Numeric vector.  The area of the patch. Areas were measured
#'     in hectares; 1 hectare is 10,000 square meters and approximately 2.47 acres.}
#'     \item{\code{year.of.isolation}}{The year the patch was isolated by fragmentation of
#'     local environment.}
#'     \item{\code{dist.nearest}}{Numeric vector.  Distance to the nearest patch,
#'     measured in kilometers.}
#'     \item{\code{dist.larger}}{Numeric vector.  Distance to the nearest patch that is
#'     larger than the current patch, measured in kilometers.}
#'     \item{\code{grazing.intensity}}{Factor.  A score indicating the extent of
#'     livestock grazing. The categories are: "light", "less than average",
#'     "average", "moderately heavy", "heavy".}
#'     \item{\code{altitude}}{Numeric vector. Altitude of the patch, measured in meters.}
#'     \item{\code{yrs.isolation}}{Numeric vector. Number of years of isolation at the
#'     time study was conducted (1983).Computed as 1983 - year.of.isolation}
#'    }
#' @references Loyn R.H. 1987 Effects of patch area and habitat on bird abundances,
#'     species numbers and tree health in fragmented Victorian forests."  In Nature
#'     Conservation: The Role of Remnants of Native Vegetation.
#'     Saunders DA, Arnold GW, Burbridge AA, and Hopkins AJM eds. Surrey Beatty and Sons,
#'     Chipping Norton, NSW, 65-77, 1987.  Logan, M 2011 Biostatistical Design and
#'     Analysis Using R.  Wiley-Blackwell, Chapter 9
#' @source https://users.monash.edu.au/~murray/BDAR/  Listed under chapter 9 datasets
#'
"forest.birds"
