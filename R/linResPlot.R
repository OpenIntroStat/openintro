#' Create simple regression plot with residual plot
#'
#' Create a simple regression plot with residual plot.
#'
#'
#' @param x Predictor variable.
#' @param y Outcome variable.
#' @param axes Whether to plot axis labels.
#' @param wBox Whether to plot boxes around each plot.
#' @param wLine Add a regression line.
#' @param lCol Line color.
#' @param lty Line type.
#' @param lwd Line width.
#' @param main Title for the top plot.
#' @param xlab x-label.
#' @param ylab y-label.
#' @param marRes Margin for the residuals plot.
#' @param col Color of the points.
#' @param pch Plotting character of points.
#' @param cex Size of points.
#' @param yR An additional vertical stretch factor on the plot.
#' @param ylim y-limits.
#' @param subset Boolean vector, if wanting a subset of the data.
#' @param \dots Additional arguments passed to both plots.
#' @seealso \code{\link{makeTube}}
#' @export
#' @examples
#'
#' # Currently seems broken for this example.
#' n <- 25
#' x <- runif(n)
#' y <- 5 * x + rnorm(n)
#' myMat <- rbind(matrix(1:2, 2))
#' myW <- 1
#' myH <- c(1, 0.45)
#' par(mar = c(0.35, 0.654, 0.35, 0.654))
#' layout(myMat, myW, myH)
#' linResPlot(x, y, col = COL[1, 2])
linResPlot <- function(x, y,
                       axes = FALSE,
                       wBox = TRUE,
                       wLine = TRUE,
                       lCol = "#00000088",
                       lty = 1,
                       lwd = 1,
                       main = "",
                       xlab = "",
                       ylab = "",
                       marRes = NULL,
                       col = fadeColor(4, "88"),
                       pch = 20,
                       cex = 1.5,
                       yR = 0.1,
                       ylim = NULL,
                       subset = NULL,
                       ...) {
  if (is.null(ylim)[1]) {
    YR <- range(y) + c(-1, 1) * yR * diff(range(y))
  } else {
    YR <- ylim
  }
  plot(x, y,
    axes = axes,
    main = main,
    xlab = "",
    ylab = ylab,
    col = col,
    pch = pch,
    cex = cex,
    ylim = YR,
    ...
  )
  if (wBox) {
    graphics::box()
  }
  g <- stats::lm(y ~ x, subset = subset)
  if (wLine) {
    graphics::abline(g, col = lCol, lty = lty, lwd = lwd)
  }
  if (!is.null(marRes)[1]) {
    graphics::par(mar = marRes)
  }
  X <- list(x = x)
  y <- y - stats::predict(g, X)
  YR <- range(y) + c(-1, 1) * yR * diff(range(y))
  graphics::plot(x, y,
    axes = axes,
    xlab = xlab,
    ylab = "",
    col = col,
    pch = pch,
    cex = cex,
    ylim = YR,
    ...
  )
  if (wBox) {
    graphics::box()
  }
  graphics::abline(h = 0, lty = 3, col = lCol)
}
