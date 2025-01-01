#' Random sample of 500 cases from the \code{\link{hyperuricemia}} dataset.
#'
#' @name hyperuricemia.samp
#' @docType data
#' @format A tibble with 5168 rows and 8 variables:
#' \describe{
#'   \item{\code{sex}}{Factor with levels \code{male} and \code{female}}
#'   \item{\code{age}}{Numeric, measured in years}
#'   \item{\code{height}}{Numeric, measured in cm}
#'   \item{\code{weight}}{Numeric, Measured in kg}
#'   \item{\code{bmi}}{Numeric, body mass index, weight divided by height in meters squared}
#'   \item{\code{uric.acid}}{measured in micromolar/liter. Hyperuricemia (HU) was defined
#'   as uric acid >= 416 micromolar/L for males and >= 360 micromolar/L for females.}
#'   \item{\code{magnesium.intake}}{Daily magnesium intake from a food frequency questionnaire,
#'   measured in mg/day}
#'   \item{\code{hu}}{A factor, with levels \code{no}, hyperuricemia absent,
#'   \code{yes},  hyperuricemia present.
#'   Hyperuricemia (HU) was defined
#'   as uric acid >= 416 micromolar/L for males and >= 360 micromolar/L for females.}
#' }
#' @source \url{doi:10.5061/dryad.n5j23}
#' @references Wang, Yi-lun, et al. "Association between dietary magnesium intake and
#'      hyperuricemia." PLoS One 10.11 (2015): e0141079.
#'      \url{10.1371/journal.pone.0141079}
#'
"hyperuricemia.samp"
