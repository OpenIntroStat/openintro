#' Plot a Cartesian Coordinate Plane
#'
#' Create a Cartesian Coordinate Plane.
#'
#'
#' @param xlim The x-limits for the plane (vector of length 2).
#' @param ylim The y-limits for the plane (vector of length 2).
#' @param mar Plotting margins.
#' @param length The \code{length} argument is passed to the
#' \code{\link[graphics]{arrows}} function and is used to control the size of
#' the arrow.
#' @param tcl Tick size.
#' @param xylab Whether x and y should be shown next to the labels.
#' @param ticks How frequently tick marks should be shown on the axes. If a
#' vector of length 2, the first argument will correspond to the x-axis and the
#' second to the y-axis.
#' @param ticklabs How frequently tick labels should be shown on the axes. If a
#' vector of length 2, the first argument will correspond to the x-axis and the
#' second to the y-axis.
#' @param xpos The position of the labels on the x-axis. See the \code{pos}
#' argument in the \code{\link[graphics]{text}} function for additional
#' details.
#' @param ypos The position of the labels on the y-axis. See the \code{pos}
#' argument in the \code{\link[graphics]{text}} function for additional
#' details.
#' @param cex.coord Inflation factor for font size of the coordinates, where
#' any value larger than zero is acceptable and \code{1} corresponds to the
#' default.
#' @param cex.xylab Inflation factor for font size of the x and y labels, where
#' any value larger than zero is acceptable and \code{1} corresponds to the
#' default.
#' @param add Indicate whether a new plot should be created (\code{FALSE}, the
#' default) or if the Cartesian Coordinate Plane should be added to the
#' existing plot.
#' @author David Diez
#' @seealso \code{\link{lsegments}}, \code{\link{dlsegments}},
#' \code{\link{ArrowLines}}
#' @keywords Cartesian Coordinate Plane Plane Algebra
#' @export
#' @examples
#'
#' CCP()
#'
#' CCP(xylab = TRUE, ylim = c(-3.5, 2), xpos = 3, cex.coord = 1)
#'
#' CCP(xlim = c(-8, 8), ylim = c(-10, 6), ticklabs = c(2, 2), cex.xylab = 0.8)
CCP <-
  function(xlim = c(-4, 4), ylim = c(-4, 4), mar = rep(0, 4), length = 0.1, tcl = 0.007, xylab = FALSE, ticks = 1, ticklabs = 1, xpos = 1, ypos = 2, cex.coord = 1, cex.xylab = 1.5, add = FALSE) {

    # ___ Blank Canvas ___#
    xlim <- xlim + c(-1, 1)
    ylim <- ylim + c(-1, 1)
    if (!add) {
      graphics::par(mar = mar)
      graphics::plot(0,
        type = "n", axes = FALSE, xlab = "", ylab = "",
        xlim = xlim, ylim = ylim
      )
    }

    # ___ Axes ___#
    graphics::arrows(xlim[1], 0, xlim[2], 0, length = length)
    graphics::arrows(0, ylim[1], 0, ylim[2], length = length)

    # ___ Tick Marks + Labels ___#
    if (length(ticks) < 2) {
      ticks <- rep(ticks, 2)
    }
    if (length(ticklabs) < 2) {
      ticklabs <- rep(ticklabs, 2)
    }
    xR <- diff(xlim)
    yR <- diff(ylim)
    xlim <- xlim - c(-1, 1)
    ylim <- ylim - c(-1, 1)
    if (ticks[1] > 0) {
      these <- seq(round(xlim[1]), round(xlim[2]), ticks[1])
      these <- these[these != 0]
      graphics::segments(these, -yR * tcl, these, yR * tcl)
      if (ticklabs[1] > 0) {
        these <- seq(round(xlim[1]), round(xlim[2]), ticklabs[1])
        these <- these[these != 0]
        graphics::text(these, rep(0, length(these)), these,
          pos = xpos, cex = cex.coord
        )
      }
    }
    if (ticks[2] > 0) {
      these <- seq(round(ylim[1]), round(ylim[2]), ticks[2])
      these <- these[these != 0]
      graphics::segments(-xR * tcl, these, xR * tcl, these)
      if (ticklabs[2] > 0) {
        these <- seq(round(ylim[1]), round(ylim[2]), ticklabs[2])
        these <- these[these != 0]
        graphics::text(rep(0, length(these)), these, these,
          pos = ypos, cex = cex.coord
        )
      }
    }

    # ___ x-y Labels ___#
    if (xylab[1]) {
      graphics::text(xlim[2] + 1, 0, "x", pos = xpos, cex = cex.xylab)
      graphics::text(0, ylim[2] + 1, "y", pos = ypos, cex = cex.xylab)
    }
  }
