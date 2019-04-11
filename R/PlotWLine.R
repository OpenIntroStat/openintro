#' Plot data and add a regression line
#'
#' Plot data and add a regression line.
#'
#'
#' @param x Predictor variable.
#' @param y Outcome variable.
#' @param xlab x-axis label.
#' @param ylab y-axis label.
#' @param col Color of points.
#' @param cex Size of points.
#' @param pch Plotting character.
#' @param n The preferred number of axis labels.
#' @param nMax The maximum number of axis labels.
#' @param yR y-limit buffer factor.
#' @param axes Boolean to indicate whether or not to include axes.
#' @param \dots Passed to \code{plot}.
#' @seealso \code{\link{makeTube}}
#' @export
#' @examples
#'
#' PlotWLine(1:10, seq(-5, -2, length.out = 10) + rnorm(10))
#'
PlotWLine <- function(x, y,
                      xlab = '',
                      ylab = '',
                      col = fadeColor(4, "88"),
                      cex = 1.2,
                      pch = 20,
                      n = 4,
                      nMax = 4,
                      yR = 0.1,
                      axes = TRUE,
                      ...){
  graphics::par(las = 0)
  yR <- range(y) + c(-1, 1) * 0.1 * diff(range(y))
  graphics::plot(x, y,
       pch = 20,
       cex = cex,
       col = col,
       xlab = '',
       ylab = '',
       ylim = yR,
       axes = FALSE,
       ...)
  if (axes) {
    buildAxis(1, x, n, nMax = nMax)
  }
  graphics::mtext(xlab, 1, 1.8)
  graphics::mtext(ylab, 2, 2.8)
  graphics::par(mgp = c(2.8, 0.75, 0), las = 1)
  if (axes) {
    buildAxis(2, y, n, nMax = nMax)
  }
  g <- stats::lm(y ~ x)
  graphics::abline(g, col = 1, lwd = 1.5)
}
