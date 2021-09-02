#' Histogram or hollow histogram
#'
#' Create histograms and hollow histograms. This function permits easy color
#' and appearance customization.
#'
#'
#' @param x Numerical vector or a frequency table (matrix) where the first
#' column represents the observed values and the second column the frequencies.
#' See also \code{freqTable} argument.
#' @param col Shading of the histogram bins.
#' @param border Color of histogram bin borders.
#' @param breaks A vector for the bin boundaries or an approximate number of
#' bins.
#' @param probability If \code{FALSE}, the frequency is plotted. If
#' \code{TRUE}, then a probability density.
#' @param hollow If \code{TRUE}, a hollow histogram will be created.
#' @param add If \code{TRUE}, the histogram is added to the plot.
#' @param lty Line type. Applies only if \code{hollow=TRUE}.
#' @param lwd Line width. Applies only if \code{hollow=TRUE}.
#' @param freqTable Set to \code{TRUE} if \code{x} is a frequency table.
#' @param right Set to \code{FALSE} to assign values of \code{x} that fall on a
#' bin margin to the left bin. Otherwise the ties default to the right bin.
#' @param axes If \code{FALSE}, the axes are not plotted.
#' @param xlab Label for the x axis.
#' @param ylab Label for the y axis.
#' @param xlim Limits for the x axis.
#' @param ylim Limits for the y axis.
#' @param \dots Additional arguments to \code{plot}. If \code{add} is
#' \code{TRUE}, these arguments are ignored.
#' @author David Diez
#' @seealso \code{\link{boxPlot}}, \code{\link{dotPlot}},
#' \code{\link{densityPlot}}
#' @export
#' @examples
#'
#'
#' histPlot(tips$tip, main = "Tips")
#'
#' # overlaid hollow histograms
#' histPlot(tips$tip[tips$day == "Tuesday"],
#'   probability = TRUE,
#'   hollow = TRUE,
#'   main = "Tips by day"
#' )
#' histPlot(tips$tip[tips$day == "Friday"],
#'   probability = TRUE,
#'   hollow = TRUE,
#'   add = TRUE,
#'   lty = 3,
#'   border = "red"
#' )
#' legend("topright",
#'   col = c("black", "red"),
#'   lty = 1:2,
#'   legend = c("Tuesday", "Friday")
#' )
#'
#' # breaks and colors
#' histPlot(tips$tip,
#'   col = fadeColor("yellow", "33"),
#'   border = "darkblue",
#'   probability = TRUE,
#'   breaks = 30,
#'   lwd = 3
#' )
#'
#' # custom breaks
#' brks <- c(-1, 0, 1, 2, 3, 4, seq(5, 20, 5), 22, 24, 26)
#' histPlot(tips$tip,
#'   probability = TRUE,
#'   breaks = brks,
#'   col = fadeColor("darkgoldenrod4", "33"),
#'   xlim = c(0, 26)
#' )
histPlot <- function(x,
                     col = fadeColor("black", "22"),
                     border = "black",
                     breaks = "default",
                     probability = FALSE,
                     hollow = FALSE,
                     add = FALSE,
                     lty = 2,
                     lwd = 1,
                     freqTable = FALSE,
                     right = TRUE,
                     axes = TRUE,
                     xlab = NULL,
                     ylab = NULL,
                     xlim = NULL,
                     ylim = NULL,
                     ...) {
  if (breaks[1] == "default") {
    breaks <- "Sturges"
  }
  if (freqTable) {
    nObs <- sum(x[, 2])
    xR <- range(x[, 1])
    xR <- xR + c(-1, 1) * diff(xR) / 10^5
    H <- list()
    if (is.character(breaks)[1]) {
      breaks <- 10
    }
    if (length(breaks) == 1) {
      H$breaks <- pretty(xR, n = breaks, min.n = 1)
    } else {
      H$breaks <- breaks
    }
    H$mids <- H$breaks[-1] - diff(H$breaks) / 2
    H$counts <- rep(0, length(H$mids))
    for (i in 1:length(H$counts)) {
      if (right) {
        c1 <- x[, 1] <= H$breaks[i + 1]
        c2 <- x[, 1] > H$breaks[i]
        temp <- which(c1 & c2)
      } else {
        c1 <- x[, 1] < H$breaks[i + 1]
        c2 <- x[, 1] >= H$breaks[i]
        temp <- which(c1 & c2)
      }
      H$counts[i] <- sum(x[temp, 2])
    }
    H$density <- (H$counts / sum(H$counts)) / diff(H$breaks)
  } else {
    if (length(breaks) > 1 && is.numeric(breaks)[1]) {
      H <- graphics::hist(x,
        breaks = breaks,
        plot = FALSE,
        right = right,
        include.lowest = FALSE
      )
    } else {
      H <- graphics::hist(x,
        breaks = breaks,
        plot = FALSE,
        right = right
      )
    }
  }
  br <- H$breaks
  mi <- H$mids
  y <- H$counts
  if (probability) {
    y <- H$density
  }
  if (is.null(ylab)) {
    ylab <- "frequency"
    if (probability) {
      ylab <- "density"
    }
  }
  if (is.null(xlab)) {
    xlab <- H$xname
  }
  if (is.null(xlim)) {
    xlim <- range(br)
  }
  if (is.null(ylim)) {
    ylim <- c(0, max(y))
  }
  if (!add) {
    plot(x,
      xlim = xlim,
      ylim = ylim,
      type = "n",
      axes = FALSE,
      ylab = ylab,
      xlab = xlab,
      ...
    )
    graphics::abline(h = 0)
    if (axes) {
      graphics::axis(1)
      graphics::axis(2)
    }
  }
  if (hollow) {
    n <- length(H$breaks)
    br <- c(br[1], br)
    y <- c(0, y, 0)
    graphics::points(br, y,
      type = "s",
      col = border,
      lty = lty,
      lwd = lwd
    )
  } else {
    miL <- length(mi)
    for (i in 1:miL) {
      rect(br[i], 0, br[i + 1], y[i],
        border = "#ffffff00", col = col
      )
      lines(rep(br[i], 2), c(0, y[i]), col = border)
      lines(br[i:(i + 1)], rep(y[i], 2), col = border)
      if (i > 1) {
        if (y[i] < y[i - 1]) {
          lines(rep(br[i], 2),
            y[(i - 1):i],
            col = border
          )
        }
      }
    }
    lines(rep(br[miL + 1], 2),
      c(0, y[miL]),
      col = border
    )
  }
}
