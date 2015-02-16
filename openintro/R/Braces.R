
Braces <- function(
    x,
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
      BuildQuarterCircle(short., -long. + short., short., pi))
  X <- c(quarter[[1]][[1]],
         0, 0,
         quarter[[2]][[1]],
         quarter[[3]][[1]],
         0, 0,
         quarter[[4]][[1]])
  Y <- c(quarter[[1]][[2]],
         long. - short., short.,
         quarter[[2]][[2]],
         quarter[[3]][[2]],
         -short., -long. + short.,
         quarter[[4]][[2]])
  tmp <- c(cos(face.radians),
           sin(face.radians),
           -sin(face.radians),
           cos(face.radians))
  rotation.matrix <- matrix(tmp, 2, 2)
  XY <- rotation.matrix <- rotation.matrix %*% rbind(X, Y)
  lines(x + XY[1, ], y + XY[2, ], ...)
}
