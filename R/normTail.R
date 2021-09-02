#' Normal distribution tails
#'
#' Produce a normal (or t) distribution and shaded tail.
#'
#'
#' @param m Numerical value for the distribution mean.
#' @param s Numerical value for the distribution standard deviation.
#' @param L Numerical value representing the cutoff for a shaded lower tail.
#' @param U Numerical value representing the cutoff for a shaded upper tail.
#' @param M Numerical value representing the cutoff for a shaded central
#' region.
#' @param df Numerical value describing the degrees of freedom.  Default is
#' \code{1000}, which results in a nearly normal distribution. Small values may
#' be useful to emphasize small tails.
#' @param curveColor The color for the distribution curve.
#' @param border The color for the border of the shaded area.
#' @param col The color for filling the shaded area.
#' @param xlim Limits for the x axis.
#' @param ylim Limits for the y axis.
#' @param xlab A title for the x axis.
#' @param ylab A title for the y axis.
#' @param digits The maximum number of digits past the decimal to use in axes
#' values.
#' @param axes A numeric value denoting whether to draw both axes (\code{3}),
#' only the vertical axes (\code{2}), only the horizontal axes (\code{1}, the
#' default), or no axes (\code{0}).
#' @param detail A number describing the number of points to use in drawing the
#' normal curve. Smaller values correspond to a less smooth curve but reduced
#' memory usage in the final file.
#' @param xLab If \code{"number"}, then the axis is drawn at the mean, and
#' every standard deviation out until the third standard deviation. If
#' \code{"symbol"}, then Greek letters are used for standard deviations from
#' three standard deviations from the mean.
#' @param cex.axis Numerical value controlling the size of the axis labels.
#' @param xAxisIncr A number describing how often axis labels are placed,
#' scaled by standard deviations. This argument is ignored if \code{xLab =
#' "symbol"}.
#' @param add Boolean indicating whether to add this normal curve to the
#' existing plot.
#' @param \dots Additional arguments to \code{plot}.
#' @author David Diez
#' @seealso \code{\link{buildAxis}}
#' @export
#' @examples
#'
#' normTail(3, 2, 5)
#' normTail(3, 2, 1, xLab = "symbol")
#' normTail(3, 2, M = 1:2, xLab = "symbol", cex.axis = 0.8)
#' normTail(3, 2, U = 5, axes = FALSE)
#' normTail(L = -1, U = 2, M = c(0, 1), axes = 3, xAxisIncr = 2)
#' normTail(
#'   L = -1, U = 2, M = c(0, 1),
#'   xLab = "symbol", cex.axis = 0.8, xAxisIncr = 2
#' )
`normTail` <- function(m = 0,
                       s = 1,
                       L = NULL,
                       U = NULL,
                       M = NULL,
                       df = 1000,
                       curveColor = 1,
                       border = 1,
                       col = "#CCCCCC",
                       xlim = NULL,
                       ylim = NULL,
                       xlab = "",
                       ylab = "",
                       digits = 2,
                       axes = 1,
                       detail = 999,
                       xLab = c("number", "symbol"),
                       cex.axis = 1,
                       xAxisIncr = 1,
                       add = FALSE,
                       ...) {
  if (is.null(xlim)[1]) {
    xlim <- m + c(-1, 1) * 3.5 * s
  }
  temp <- diff(range(xlim))
  x <- seq(xlim[1] - temp / 4,
    xlim[2] + temp / 4,
    length.out = detail
  )
  y <- stats::dt((x - m) / s, df) / s
  if (is.null(ylim)[1]) {
    ylim <- range(c(0, y))
  }
  if (add) {
    lines(x, y, col = curveColor, ...)
  } else {
    plot(x, y,
      type = "l",
      xlim = xlim,
      ylim = ylim,
      xlab = xlab,
      ylab = ylab,
      axes = FALSE,
      col = curveColor,
      ...
    )
  }
  if (!is.null(L[1])) {
    these <- (x <= L)
    X <- c(x[these][1], x[these], rev(x[these])[1])
    Y <- c(0, y[these], 0)
    graphics::polygon(X, Y, border = border, col = col)
  }
  if (!is.null(U[1])) {
    these <- (x >= U)
    X <- c(x[these][1], x[these], rev(x[these])[1])
    Y <- c(0, y[these], 0)
    graphics::polygon(X, Y, border = border, col = col)
  }
  if (all(!is.null(M[1:2]))) {
    these <- (x >= M[1] & x <= M[2])
    X <- c(x[these][1], x[these], rev(x[these])[1])
    Y <- c(0, y[these], 0)
    graphics::polygon(X, Y, border = border, col = col)
  }

  if (!add && (axes == 1 || axes > 2)) {
    if (xLab[1] == "symbol") {
      xAt <- m + (-3:3) * s
      xLab <- expression(
        mu - 3 * sigma,
        mu - 2 * sigma,
        mu - sigma,
        mu,
        mu + sigma,
        mu + 2 * sigma,
        mu + 3 * sigma
      )
    } else if (xLab[1] != "number") {
      stop('Argument "xLab" not recognized.\n')
    } else {
      temp <- s * seq(
        xAxisIncr,
        max(abs(xlim - m)) / s,
        xAxisIncr
      )
      xAt <- m + c(-temp, 0, temp)
      xLab <- round(xAt, digits = digits)
    }
  }
  if (!add && axes > 2) {
    graphics::axis(1, at = xAt, labels = xLab, cex.axis = cex.axis)
    buildAxis(2, c(y, 0), n = 3, nMax = 3, cex.axis = cex.axis)
  } else if (!add && axes > 1) {
    buildAxis(2, c(y, 0), n = 3, nMax = 3, cex.axis = cex.axis)
  } else if (!add && axes > 0) {
    graphics::axis(1, at = xAt, labels = xLab, cex.axis = cex.axis)
  }
  graphics::abline(h = 0)
}
