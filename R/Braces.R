#' Plot a Braces Symbol
#'
#' This function is not yet very flexible.
#'
#'
#' @param x x-coordinate of the center of the braces.
#' @param y y-coordinate of the center of the braces.
#' @param face.radians Radians of where the braces should face.  For example,
#' the default with \code{face.radians = 0} has the braces facing right.
#' Setting to \code{pi / 2} would result in the braces facing up.
#' @param long The units for the long dimension of the braces.
#' @param short The units for the short dimension of the braces.  This must be
#' less than or equal to half of the long dimension.
#' @param \dots Arguments passed to \code{\link[graphics]{lines}}.
#' @author David Diez
#' @seealso \code{\link{dlsegments}}
#' @export
#' @examples
#'
#' plot(0:1, 0:1, type = "n")
#' Braces(0.5, 0.5, face.radians = 3 * pi / 2)
Braces <- function(x,
                   y,
                   face.radians = 0, # left
                   long = 1,
                   short = 0.2,
                   ...) {
  stopifnot(short <= long / 2)

  BuildQuarterCircle <- function(x, y,
                                 radius,
                                 radians = 0,
                                 reverse = FALSE, ...) {
    theta <- seq(radians, radians + pi / 2, length.out = 180)
    if (reverse) {
      theta <- rev(theta)
    }
    list(x + radius * cos(theta), y + radius * sin(theta))
  }

  # _____ Relative Coordinates _____ #
  long. <- long / 2
  short. <- short / 2
  quarter <- list(
    BuildQuarterCircle(short., long. - short., short., pi / 2),
    BuildQuarterCircle(-short., short., short., 3 * pi / 2, TRUE),
    BuildQuarterCircle(-short., -short., short., 0, TRUE),
    BuildQuarterCircle(short., -long. + short., short., pi)
  )
  X <- c(
    quarter[[1]][[1]],
    0, 0,
    quarter[[2]][[1]],
    quarter[[3]][[1]],
    0, 0,
    quarter[[4]][[1]]
  )
  Y <- c(
    quarter[[1]][[2]],
    long. - short., short.,
    quarter[[2]][[2]],
    quarter[[3]][[2]],
    -short., -long. + short.,
    quarter[[4]][[2]]
  )
  tmp <- c(
    cos(face.radians),
    sin(face.radians),
    -sin(face.radians),
    cos(face.radians)
  )
  rotation.matrix <- matrix(tmp, 2, 2)
  XY <- rotation.matrix <- rotation.matrix %*% rbind(X, Y)
  lines(x + XY[1, ], y + XY[2, ], ...)
}
