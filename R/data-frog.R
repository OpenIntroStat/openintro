#' Frog Maternal Investment Based on Altitude in Tibetan Plateau
#'
#' From February to April 2013, the study team studied various populations of frogs
#' living between 2035 to 3494m above sea level in the eastern Tibetan Plateau.
#' They located breeding ponds at various altitudes, and at each one, obtained a
#' small sample of freshly laid egg clutches.They counted the number of eggs and
#' weighed the clutch to determine egg weight, and approximated egg size from
#' photographs. The data are used to estimate whether maternal investment changes
#' at varying altitudes on the Tibetan Plateau.  Investment is assessed by measuring
#' how reproducing females allocated their energy to egg productions of size or
#' number, all characteristics of offspring fitness.  Source data on size and
#' volume in log_10 scale have been converted to standard numeric scale.
#'
#' @docType data
#' @name frog
#' @format   A data frame with 431 observations on the following 6 variables.
#' \describe{
#'    \item{\code{altitude}}{Numeric, altitude of study site in meters above sea level.}
#'    \item{\code{latitude}}{Numeric, latitude of study site measured in degrees.}
#'    \item{\code{clutch.size}}{Numeric, estimated number of eggs in clutch.}
#'    \item{\code{body.size}}{Numeric, length of mother frog who laid the egg clutch in cm.}
#'    \item{\code{clutch.volume}}{Numeric, volume of egg clutch in mm^3.}
#'    \item{\code{egg.size}}{Numeric, average diameter of an individual egg to the 0.01mm.}
#'    }
#' @source \url{https://dx.doi.org/10.5061/dryad.6v0c1}
#' @references Chen, W., et al. Maternal investment increases with altitude in a frog on
#'     the Tibetan Plateau. Journal of evolutionary biology 26.12 (2013): 2710-2715.
#'     \url{https://doi.org/10.1111/jeb.12271}
#'
"frog"
