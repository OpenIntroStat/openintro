#' Density plot
#'
#' Compute kernel density plots, written in the same structure as
#' \code{\link{boxPlot}}. Histograms can be automatically added for teaching
#' purposes.
#'
#'
#' @param x A numerical vector.
#' @param fact A character or factor vector defining the grouping for data in
#' \code{x}.
#' @param bw Bandwidth. See \code{density}.
#' @param histo Whether to plot a faded histogram (\code{'faded'}) or hollow
#' histogram (\code{'hollow'}) in the background. By default, no histogram will
#' be plotted.
#' @param breaks The \code{breaks} argument for histPlot if \code{histo} is
#' \code{'faded'} or \code{'hollow'}.
#' @param fading Character value of hexadecimal, e.g. \code{'22'} or
#' \code{'5D'}, describing the amount of fading inside the rectangles of the
#' histogram if \code{histo='faded'}.
#' @param fadingBorder Character value of hexadecimal, e.g. \code{'22'} or
#' \code{'5D'}, describing the amount of fading of the rectangle borders of the
#' histogram if \code{histo} is \code{'faded'} or \code{'hollow'}.
#' @param lty Numerical vector describing the line type for the density
#' curve(s). Each element corresponds to a different level of the
#' argument\code{fact}.
#' @param lwd Numerical vector describing the line width for the density
#' curve(s). Each element corresponds to a different level of the
#' argument\code{fact}.
#' @param col Numerical vector describing the line color for the density
#' curve(s). Each element corresponds to a different level of the
#' argument\code{fact}.
#' @param key An argument to specify ordering of the factor levels.
#' @param add If \code{TRUE}, the density curve is added to the plot.
#' @param adjust Argument passed to \code{density} to adjust the bandwidth.
#' @param kernel Argument passed to \code{density} to select the kernel used.
#' @param weights Argument passed to \code{density} to weight observations.
#' @param n Argument passed to \code{density} to specify the detail in the
#' density estimate.
#' @param from Argument passed to \code{density} specifying the lowest value to
#' include in the density estimate.
#' @param to Argument passed to \code{density} specifying the largest value to
#' include in the density estimate.
#' @param na.rm Argument passed to \code{density} specifying handling of
#' \code{NA} values.
#' @param xlim x-axis limits.
#' @param ylim y-axis limits.
#' @param main Title for the plot.
#' @param ...  If \code{add=FALSE}, then additional arguments to \code{plot}.
#' @author David Diez
#' @seealso \code{\link{histPlot}}, \code{\link{dotPlot}},
#' \code{\link{boxPlot}}
#' @export
#' @examples
#'
#' # hollow histograms
#' histPlot(tips$tip[tips$day == "Tuesday"],
#'   hollow = TRUE, xlim = c(0, 30),
#'   lty = 1, main = "Tips by day"
#' )
#' histPlot(tips$tip[tips$day == "Friday"],
#'   hollow = TRUE, border = "red",
#'   add = TRUE, main = "Tips by day"
#' )
#' legend("topright",
#'   col = c("black", "red"),
#'   lty = 1:2, legend = c("Tuesday", "Friday")
#' )
#'
#' # density plots
#' densityPlot(tips$tip, tips$day,
#'   col = c("black", "red"), main = "Tips by day"
#' )
#' legend("topright",
#'   col = c("black", "red"),
#'   lty = 1:2, legend = c("Tuesday", "Friday")
#' )
#'
#' densityPlot(tips$tip,
#'   histo = "faded",
#'   breaks = 15, main = "Tips by day"
#' )
#'
#' densityPlot(tips$tip,
#'   histo = "hollow",
#'   breaks = 30, fadingBorder = "66",
#'   lty = 1, main = "Tips by day"
#' )
densityPlot <- function(x, fact = NULL, bw = "nrd0", histo = c("none", "faded", "hollow"), breaks = "Sturges", fading = "0E", fadingBorder = "25", lty = NULL, lwd = 1, col = c("black", "red", "blue"), key = NULL, add = FALSE, adjust = 1, kernel = c("gaussian", "epanechnikov", "rectangular", "triangular", "biweight", "cosine", "optcosine"), weights = NULL, n = 512, from, to, na.rm = FALSE, xlim = NULL, ylim = NULL, main = "", ...) {
  if (!is.null(fact)[1]) {
    d <- list()
    fact <- as.character(fact)
    if (is.null(key)[1]) {
      key <- unique(fact)
    }
    K <- length(key)
    if (is.null(lty)[1]) {
      lty <- 1:K
    }
    if (is.null(lwd)[1]) {
      lwd <- rep(1, K)
    }
    xR <- NULL
    yR <- NULL
    for (i in 1:K) {
      d[[i]] <- stats::density(x[fact == key[i]],
        bw = bw, adjust = adjust, kernel = kernel,
        weights = weights, n = n, from = from, to = to,
        na.rm = na.rm
      )
      xR <- range(c(xR, d[[i]]$x))
      yR <- max(c(yR, max(d[[i]]$y)))
    }
    if (is.null(xlim)[1]) {
      xlim <- xR
    }
    if (is.null(ylim)[1]) {
      ylim <- c(0, yR)
    }
    if (add) {
      for (i in 1:K) {
        densityPlot(x[fact == key[i]],
          add = TRUE,
          col = col[i], lty = lty[i], lwd = lwd[i],
          xlim = xlim, ylim = ylim
        )
      }
    } else {
      densityPlot(x[fact == key[1]],
        add = FALSE,
        col = col[1], lty = lty[1], lwd = lwd[1],
        xlim = xlim, ylim = ylim, main = main, ...
      )
      if (K > 1) {
        for (i in 2:K) {
          densityPlot(x[fact == key[i]],
            add = TRUE,
            col = col[i], lty = lty[i], lwd = lwd[i]
          )
        }
      }
    }
  } else {
    K <- 1
    d <- stats::density(x,
      bw = bw, adjust = adjust, kernel = kernel,
      weights = weights, n = n, from = from, to = to, na.rm = na.rm
    )
    xR <- range(d$x)
    yR <- max(d$y)
    if (histo[1] %in% c("hollow", "faded")) {
      H <- graphics::hist(x, breaks = breaks, plot = FALSE)
      xR <- range(c(xR, H$breaks))
      yR <- max(c(yR, max(H$density)))
    }
    if (is.null(xlim)[1]) {
      xlim <- xR
    }
    if (is.null(ylim)[1]) {
      ylim <- c(0, yR)
    }
    if (histo[1] == "hollow") {
      histPlot(x,
        col = fadeColor(col[1], fading),
        border = fadeColor(col[1], fadingBorder),
        breaks = breaks, probability = TRUE,
        add = add, xlim = xlim, ylim = ylim, main = main,
        hollow = TRUE, ...
      )
    } else if (histo[1] == "faded") {
      histPlot(x,
        col = fadeColor(col[1], fading),
        border = fadeColor(col[1], fadingBorder),
        breaks = breaks, probability = TRUE,
        add = add, xlim = xlim, ylim = ylim, main = main, ...
      )
    } else if (!add) {
      graphics::plot(d, col = col[1], type = "l", main = main, xlim = xlim, ylim = ylim, ...)
      graphics::abline(h = 0)
    }
    if (histo[1] %in% c("hollow", "faded") | add) {
      graphics::points(d,
        col = col[1], type = "l",
        lty = lty, lwd = lwd
      )
    }
  }
}
