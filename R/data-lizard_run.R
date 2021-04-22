#' Lizard speeds
#'
#' Data on top speeds measured on a laboratory race track for two species
#' of lizards: Western fence lizard (Sceloporus occidentalis) and
#' Sagebrush lizard (Sceloporus graciosus).
#'
#' @name lizard_run
#' @docType data
#' @format A data frame with 48 observations on the following 3 variables.
#' \describe{
#'   \item{top_speed}{Top speed of lizard, meters per second.}
#'   \item{common_name}{Common name: `Western fence lizard` and `Sagebrush lizard`.}
#'   \item{scientific_name}{Scientific name (Genus and species): `Sceloporus occidentalis` and `Sceloporus graciosus`.}
#' }
#' @source Adolph, S. C. 1987.  Physiological and behavioral ecology of the lizards
#' Sceloporus occidentalis and Sceloporus graciosus. Dissertation.
#' University of Washington, Seattle, Washington, USA.
#' @keywords datasets
#' @examples
#' library(ggplot2)
#' library(dplyr)
#'
#' # Top speed by species
#' ggplot(lizard_run, aes(x = top_speed, color = common_name, fill = common_name)) +
#'   geom_density(alpha = 0.5)
#'
#' # Top speed summary statistics by species
#' lizard_run %>%
#'   group_by(common_name) %>%
#'   summarise(
#'     n    = n(),
#'     mean = mean(top_speed),
#'     sd   = sd(top_speed)
#'   )
#'
"lizard_run"
