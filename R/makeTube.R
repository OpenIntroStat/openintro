#' Regression tube
#'
#' Produce a linear, quadratic, or nonparametric tube for regression data.
#'
#'
#' @param x \code{x} coordinates.
#' @param y \code{y} coordinates.
#' @param Z Number of standard deviations out from the regression line to
#' extend the tube.
#' @param R Control of how far the tube extends to the left and right.
#' @param col Fill color of the tube.
#' @param border Border color of the tube.
#' @param type The type of model fit to the data. Here \code{'robust'} results
#' in a nonparametric estimate.
#' @param stDev Choices are constant variance (\code{'constant'}), the standard
#' deviation of the errors changes linearly (\code{'linear'}), or the standard
#' deviation of the errors should be estimated using nonparametric methods
#' (\code{'other'}).
#' @param length.out The number of observations used to build the regression
#' model. This argument may be increased to increase the smoothing of a
#' quadratic or nonparametric curve.
#' @param bw Bandwidth used if \code{type='robust'} or \code{homosk=FALSE}.
#' @param plotTube Whether the tube should be plotted.
#' @param addLine Whether the linear model should be plotted.
#' @param \dots Additional arguments passed to the \code{lines} function if
#' \code{addLine=TRUE}.
#' @return \item{X}{\code{x} coordinates for the regression model.}
#' \item{Y}{\code{y} coordinates for the regression model.}
#' \item{tubeX}{\code{x} coordinates for the boundary of the tube.}
#' \item{tubeY}{\code{y} coordinates for the boundary of the tube.}
#' @author David Diez
#' @seealso \code{\link{lmPlot}}
#' @keywords Regression Kernel smoothing Data tube Least squares
#' @export
#' @examples
#'
#' # possum example
#' plot(possum$total_l, possum$head_l)
#' makeTube(possum$total_l, possum$head_l, 1)
#' makeTube(possum$total_l, possum$head_l, 2)
#' makeTube(possum$total_l, possum$head_l, 3)
#'
#' # grades and TV example
#' plot(gradestv)
#' makeTube(gradestv$tv, gradestv$grades, 1.5)
#' plot(gradestv)
#' makeTube(gradestv$tv, gradestv$grades, 1.5, stDev = "o")
#' plot(gradestv)
#' makeTube(gradestv$tv, gradestv$grades, 1.5, type = "robust")
#' plot(gradestv)
#' makeTube(gradestv$tv, gradestv$grades, 1.5, type = "robust", stDev = "o")
#'
#' # what can go wrong with a basic least squares model
#' # 1
#' x <- runif(100)
#' y <- 25 * x - 20 * x^2 + rnorm(length(x), sd = 1.5)
#' plot(x, y)
#' makeTube(x, y, type = "q")
#' # 2
#' x <- c(-0.6, -0.46, -0.091, runif(97))
#' y <- 25 * x + rnorm(length(x))
#' y[2] <- y[2] + 8
#' y[1] <- y[1] + 1
#' plot(x, y, ylim = range(y) + c(-10, 5))
#' makeTube(x, y)
#' # 3
#' x <- runif(100)
#' y <- 5 * x + rnorm(length(x), sd = x)
#' plot(x, y)
#' makeTube(x, y, stDev = "l", bw = 0.03)
makeTube <- function(x, y,
                     Z = 2,
                     R = 1,
                     col = "#00000022",
                     border = "#00000000",
                     type = c("lin", "quad", "robust"),
                     stDev = c("constant", "linear", "other"),
                     length.out = 99,
                     bw = "default",
                     plotTube = TRUE,
                     addLine = TRUE,
                     ...) {
  n <- length(x)
  r <- range(x)
  R <- abs(R)
  R <- r + c(-R, R) * diff(r)
  X <- seq(R[1], R[2], length.out = length.out)
  type <- match.arg(type)
  stDev <- match.arg(stDev)
  if (type == "lin") {
    g <- stats::lm(y ~ x)
    hold <- data.frame(x = X)
    Y <- stats::predict(g, hold)
    S <- stats::sd(g$residuals)
  } else if (type == "quad") {
    x2 <- x^2
    g <- stats::lm(y ~ x + x2)
    hold <- data.frame(x = X, x2 = X^2)
    Y <- stats::predict(g, hold)
    S <- stats::sd(g$residuals)
  } else if (type == "robust") {
    if (bw[1] == "default") {
      bw <- stats::bw.nrd0(x)
    }
    Y <- rep(NA, length(X))
    for (i in 1:length(X)) {
      if (min(x - X[i]) < 2 * bw) {
        temp <- stats::dnorm(x - X[i], sd = bw)
        Y[i] <- sum(y * temp) / sum(temp)
      }
    }
    hold <- c()
    for (i in 1:length(y)) {
      hold[i] <- Y[which.min(abs(X - x[i]))[1]]
    }
    S <- rep(stats::sd(hold - y), length(Y))
  } else {
    stop('Argument "type" not recognized.\n')
  }
  if (stDev == "other") {
    if (bw[1] == "default") {
      bw <- stats::bw.nrd0(x)
    }
    S <- rep(NA, length(X))
    for (i in 1:length(X)) {
      if (min(x - X[i]) < 2 * bw) {
        temp <- stats::dnorm(x - X[i], sd = bw)
        if (sum(temp) > 0) {
          wtdV <- sum(temp * (y - Y[i])^2) / (sum(temp))
          S[i] <- sqrt(wtdV)
        }
      }
    }
    these <- !is.na(Y) & !is.na(S)
    X <- X[these]
    Y <- Y[these]
    S <- S[these]
  } else if (stDev == "linear") {
    if (bw[1] == "default") {
      bw <- stats::bw.nrd0(x)
    }
    S <- rep(NA, length(X))
    sWts <- rep(NA, length(X))
    for (i in 1:length(X)) {
      if (min(x - X[i]) < 2 * bw) {
        temp <- stats::dnorm(x - X[i], sd = bw)
        sWts[i] <- sum(temp)
        if (sWts[i] > 0) {
          wtdV <- sum(temp * (y - Y[i])^2) / sWts[i]
          S[i] <- sqrt(wtdV)
        }
      }
    }
    g <- stats::lm(S ~ X, weights = sWts)
    S <- stats::predict(g, list(X = X))
    these <- !is.na(Y) & !is.na(S) & (S > 0)
    X <- X[these]
    Y <- Y[these]
    S <- S[these]
  } else if (stDev != "constant") {
    stop('Did not recognize form of the "stDev" argument.\n')
  }
  x <- c(X, rev(X))
  y <- c(Y - Z * S, rev(Y + Z * S))
  if (plotTube) {
    graphics::polygon(x, y, border = border, col = col)
  }
  if (addLine) {
    graphics::lines(X, Y, ...)
  }
  invisible(list(X = X, Y = Y, tubeX = x, tubeY = y))
}
