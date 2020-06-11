#' Linear regression plot with residual plot
#'
#' Plot data, the linear model, and a residual plot simultaneously.
#'
#'
#' @param x The x coordinates of points in the plot.
#' @param y The y coordinates of points in the plot.
#' @param xAxis The maximum number of x axis labels.
#' @param yAxis The maximum number of y axis labels.
#' @param resAxis The maximum number of y axis labels in the residual plot.
#' @param resSymm Boolean determining whether the range of the residual plot
#' should be symmetric about zero.
#' @param wBox Boolean determining whether a box should be added around each
#' plot.
#' @param wLine Boolean determining whether to add a regression line to the
#' plot.
#' @param lCol The color of the regression line to be added.
#' @param lty The line type of the regression line to be added.
#' @param lwd The line width of the regression line to be added.
#' @param xlab A label for the x axis.
#' @param ylab A label for the y axis
#' @param marRes Margin specified for the residuals.
#' @param col Color of points.
#' @param pch Plotting character.
#' @param cex Plotting character size.
#' @param xR Scaling the limits of the x axis. Ignored if \code{xlim}
#' specified.
#' @param yR Scaling the limits of the y axis. Ignored if \code{ylim}
#' specified.
#' @param xlim Limits for the x axis.
#' @param ylim Limits for the y axis.
#' @param subset A subset of the data to be used for the linear model.
#' @param parCustom If \code{TRUE}, then the plotting margins are not modified
#' automatically. This value should also be \code{TRUE} if the plots are being
#' placed within a plot of multiple panels.
#' @param myHeight A numerical vector of length 2 representing the ratio of the
#' primary plot to the residual plot, in height.
#' @param plots Not currently utilized.
#' @param highlight Numerical vector specifying particular points to highlight.
#' @param hlCol Color of highlighted points.
#' @param hlCex Size of highlighted points.
#' @param hlPch Plotting characters of highlighted points.
#' @param na.rm Remove cases with \code{NA} values.
#' @param \dots Additional arguments to \code{plot}.
#' @author David Diez
#' @seealso \code{\link{makeTube}}
#' @keywords linear model residuals
#' @export
#' @examples
#'
#' lmPlot(satgpa$sat_sum, satgpa$fy_gpa)
#'
#' lmPlot(gradestv$tv, gradestv$grades, xAxis=4,
#' 	xlab='time watching TV', yR=0.2, highlight=c(1,15,20))
#'
lmPlot <- function(x, y,
                   xAxis = 0,
                   yAxis = 4,
                   resAxis = 3,
                   resSymm = TRUE,
                   wBox = TRUE,
                   wLine = TRUE,
                   lCol = "#00000088",
                   lty = 1,
                   lwd = 1,
                   xlab = "",
                   ylab = "",
                   marRes = NULL,
                   col = "#22558888",
                   pch = 20,
                   cex = 1.5,
                   xR = 0.02,
                   yR = 0.1,
                   xlim = NULL,
                   ylim = NULL,
                   subset = NULL,
                   parCustom = FALSE,
                   myHeight = c(1, 0.45),
                   plots = c("both", "mainOnly", "resOnly"),
                   highlight = NULL,
                   hlCol = NULL,
                   hlCex = 1.5,
                   hlPch = 20,
                   na.rm = TRUE,
                   ...) {
  if (na.rm) {
    these <- is.na(x) | is.na(y)
    if (any(these)) {
      x <- x[!these]
      y <- y[!these]
    }
  }
  if (!parCustom) {
    myMat <- rbind(matrix(1:2, 2))
    graphics::layout(myMat, 1, myHeight)
    mar <- c(3, 4, 0.5, 0.5)
    if (xlab == "") {
      mar[1] <- 1.8
      if (xAxis < 1) {
        mar[1] <- 0.25
      }
    }
    if (ylab == "") {
      mar[2] <- 3
      if (yAxis < 1 && resAxis < 1) {
        mar[2] <- 0.5
      }
    }
    graphics::par(mar = mar, mgp = c(1.9, 0.7, 0))
  }
  if (is.null(ylim)[1]) {
    YR <- range(y) + c(-1, 1) * yR * diff(range(y))
  } else {
    YR <- ylim
  }
  if (is.null(xlim)[1]) {
    XR <- range(x) + c(-1, 1) * xR * diff(range(x))
  } else {
    XR <- xlim
  }
  these <- 1:length(x)
  if (length(highlight) > 0) {
    these <- these[-highlight]
  }
  plot(x[these], y[these],
    axes = FALSE,
    xlab = xlab,
    ylab = ylab,
    col = col,
    pch = pch,
    cex = cex,
    ylim = YR,
    xlim = XR,
    ...
  )
  if (!is.null(highlight)[1]) {
    if (is.null(hlCol)[1]) {
      graphics::points(x[highlight], y[highlight],
        col = 1 + 1:length(highlight),
        pch = hlPch,
        cex = hlCex
      )
    } else {
      graphics::points(x[highlight], y[highlight],
        col = hlCol,
        pch = hlPch,
        cex = hlCex
      )
    }
  }
  if (wBox) {
    graphics::box()
  }
  if (xAxis > 0) {
    buildAxis(1, x, xAxis, nMax = xAxis)
  }
  if (yAxis > 0) {
    buildAxis(2, y, yAxis, nMax = yAxis)
  }
  g <- stats::lm(y ~ x, subset = subset)
  if (wLine) {
    graphics::abline(g, col = lCol, lty = lty, lwd = lwd)
  }
  if (!is.null(marRes)[1]) {
    graphics::par(mar = marRes)
  } else if (!parCustom) {
    graphics::par(mar = c(0.5, mar[2], 0.25, 0.5))
  }
  X <- list(x = x)
  y <- y - stats::predict(g, X)
  if (resSymm) {
    tmp <- range(c(y, -y))
    YR <- tmp + c(-1, 1) * yR * diff(range(c(y, -y)))
  } else {
    YR <- range(y) + c(-1, 1) * yR * diff(range(y))
  }
  plot(x[these], y[these],
    axes = FALSE,
    xlab = xlab,
    ylab = "",
    col = col,
    pch = pch,
    cex = cex,
    ylim = YR,
    ...
  )
  if (!is.null(highlight)[1]) {
    if (is.null(hlCol)[1]) {
      graphics::points(x[highlight], y[highlight],
        col = 1 + 1:length(highlight),
        pch = hlPch,
        cex = hlCex
      )
    } else {
      graphics::points(x[highlight], y[highlight],
        col = hlCol,
        pch = hlPch,
        cex = hlCex
      )
    }
  }
  if (wBox) {
    graphics::box()
  }
  if (resAxis > 0) {
    if (resSymm) {
      y <- c(y, -y)
    }
    buildAxis(2, y, resAxis, nMax = resAxis)
  }
  graphics::abline(h = 0, lty = 3, col = lCol)
}
