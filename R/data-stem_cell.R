#' Embryonic stem cells to treat heart attack (in sheep)
#'
#' Does treatment using embryonic stem cells (ESCs) help improve heart function
#' following a heart attack? Each sheep in the study was randomly assigned to
#' the ESC or control group, and the change in their hearts' pumping capacity
#' was measured in the study. A positive value corresponds to increased pumping
#' capacity, which generally suggests a stronger recovery.
#'
#'
#' @name stem_cell
#' @docType data
#' @format A data frame with 18 observations on the following 3 variables.
#' \describe{
#'   \item{trmt}{a factor with levels \code{ctrl} \code{esc}}
#'   \item{before}{a numeric vector}
#'   \item{after}{a numeric vector}
#'   }
#' @source
#' \doi{10.1016/S0140-6736(05)67380-1}
#' @keywords datasets
#' @examples
#'
#' stem_cell
"stem_cell"
