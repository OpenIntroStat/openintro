#' Dot plot
#'
#' Plot observations as dots.
#'
#'
#' @param x A numerical vector.
#' @param fact A character or factor vector defining the grouping for data in
#' \code{x}.
#' @param vertical If \code{TRUE}, the plot will be oriented vertically.
#' @param at The vertical coordinate of the points, or the horizontal
#' coordinate if \code{vertical=TRUE}. If \code{fact} is provided, then
#' locations can be specified for each group.
#' @param key The factor levels corresponding to \code{at}, \code{pch},
#' \code{col}, and \code{cex}.
#' @param pch Plotting character. If \code{fact} is given, then different
#' plotting characters can be specified for each factor level. If \code{key} is
#' specified, the elements of \code{pch} will correspond to the elements of
#' \code{key}.
#' @param col Plotting character color. If \code{fact} is given, then different
#' colors can be specified for each factor level. If \code{key} is specified,
#' the elements of \code{col} will correspond to the elements of \code{key}.
#' @param cex Plotting character size. If \code{fact} is given, then different
#' character sizes can be specified for each factor level. If \code{key} is
#' specified, the elements of \code{cex} will correspond to the elements of
#' \code{key}.
#' @param add If \code{TRUE}, then the points are added to the plot.
#' @param axes If \code{FALSE}, no axes are plotted.
#' @param xlim Limits for the x axis.
#' @param ylim Limits for the y axis.
#' @param \dots Additional arguments to be passed to \code{plot} if
#' \code{add=FALSE} or \code{points} if \code{add=TRUE}.
#' @author David Diez
#' @seealso \code{\link{histPlot}}, \code{\link{densityPlot}},
#' \code{\link{boxPlot}}
#' @export
#' @examples
#'
#' library(dplyr)
#'
#' # Price by type
#' dotPlot(cars93$price,
#'   cars93$type,
#'   key = c("large", "midsize", "small"),
#'   cex = 1:3
#' )
#'
#' # Hours worked by educational attainment or degree
#' gss2010_nona <- gss2010 %>%
#'   filter(!is.na(hrs1) & !is.na(degree))
#'
#' dotPlot(gss2010_nona$hrs1,
#'   gss2010_nona$degree,
#'   col = fadeColor("black", "11")
#' )
#'
#' # levels reordered
#' dotPlot(gss2010_nona$hrs1,
#'   gss2010_nona$degree,
#'   col = fadeColor("black", "11"),
#'   key = c("LT HIGH SCHOOL", "HIGH SCHOOL", "BACHELOR", "JUNIOR COLLEGE", "GRADUATE")
#' )
#'
#' # with boxPlot() overlaid
#' dotPlot(mariokart$total_pr,
#'   mariokart$cond,
#'   ylim = c(0.5, 2.5), xlim = c(25, 80), cex = 1
#' )
#' boxPlot(mariokart$total_pr,
#'   mariokart$cond,
#'   add = 1:2 + 0.1,
#'   key = c("new", "used"), horiz = TRUE, axes = FALSE
#' )
dotPlot <- function(x, fact = NULL, vertical = FALSE, at = 1, key = NULL, pch = 20, col = fadeColor("black", "66"), cex = 1.5, add = FALSE, axes = TRUE, xlim = NULL, ylim = NULL, ...) {
  skipOut <- FALSE
  if (!is.null(fact[1])) {
    if (!is.null(key[1])) {
      uFact <- key
    } else {
      uFact <- unique(fact)
    }
    n <- length(uFact)
    if (length(at) == 1) {
      at <- 1:n
    }
    dataR <- range(x)
    atR <- range(at)
    if (!vertical) {
      if (is.null(xlim[1])) {
        xlim <- dataR
      }
      if (is.null(ylim[1])) {
        ylim <- atR + c(-1, 1) * diff(atR) / 7
      }
    } else {
      if (is.null(xlim[1])) {
        xlim <- atR + c(-1, 1) * diff(atR) / 7
      }
      if (is.null(ylim[1])) {
        ylim <- dataR
      }
    }
    if (length(pch) == 1) {
      pch <- rep(pch, length(at))
    }
    if (length(col) == 1) {
      col <- rep(col, length(at))
    }
    if (length(cex) == 1) {
      cex <- rep(cex, length(at))
    }
    dotPlot(x[fact == uFact[1]], vertical = vertical, at = at[1], axes = axes, add = add, pch = pch[1], col = col[1], cex = cex[1], xlim = xlim, ylim = ylim, ...)
    for (i in 2:n) {
      dotPlot(x[fact == uFact[i]], vertical = vertical, at = at[i], add = TRUE, pch = pch[i], col = col[i], cex = cex[i], axes = FALSE)
    }
    if (axes & !add) {
      if (vertical) {
        graphics::axis(1, at = at, labels = uFact)
      } else {
        graphics::axis(2, at = at, labels = uFact)
      }
    }
    skipOut <- TRUE
  }
  y <- rep(at[1], length(x))
  if (vertical & !skipOut) {
    if (add) {
      graphics::points(y, x, pch = pch[1], col = col[1], cex = cex[1], ...)
    } else {
      if (is.null(xlim[1])) {
        xlim <- at[1] + c(-1, 1)
      }
      if (is.null(ylim[1])) {
        ylim <- range(x)
      }
      graphics::plot(y, x, axes = FALSE, xlim = xlim, ylim = ylim, pch = pch[1], col = col[1], cex = cex[1], ...)
    }
  } else if (!skipOut) {
    if (add) {
      graphics::points(x, y, pch = pch[1], col = col[1], cex = cex[1], ...)
    } else {
      if (is.null(ylim[1])) {
        ylim <- at[1] + c(-1, 1)
      }
      if (is.null(xlim[1])) {
        xlim <- range(x)
      }
      graphics::plot(x, y, axes = FALSE, xlim = xlim, ylim = ylim, pch = pch[1], col = col[1], cex = cex[1], ...)
    }
  }
  if (axes & !add & is.null(fact[1])) {
    graphics::axis(vertical + 1)
  }
}
