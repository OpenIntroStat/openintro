#' Create a Line That may have Arrows on the Ends
#'
#' Similar to \code{\link[graphics]{lines}}, this function will include
#' endpoints that are solid points, open points, or arrows (mix-and-match
#' ready).
#'
#'
#' @param x A vector of the x-coordinates of the line to be drawn.
#' @param y A vector of the y-coordinates of the line to be drawn. This vector
#' should have the same length as that of \code{x}.
#' @param lty The line type.
#' @param lwd The line width.
#' @param col The line and endpoint color.
#' @param length If an end point is an arrow, then this specifies the sizing of
#' the arrow. See the \code{length} argument in the
#' \code{\link[graphics]{arrows}} help file for additional details.
#' @param af A tuning parameter for creating the arrow. Usually the default
#' (\code{3}) will work. If no arrow is shown, make this value larger. If the
#' arrow appears to extend off of the line, then specify a smaller value.
#' @param cex.pch Plotting character size (if open or closed point at the end).
#' @param ends A character vector of length 2, where the first value
#' corresponds to the start of the line and the second to the end of the line.
#' A value of \code{"a"} corresponds to an arrow being shown, \code{"o"} to an
#' open circle, and \code{"c"} for a closed point.
#' @param \dots All additional arguments are passed to the
#' \code{\link[graphics]{lines}} function.
#' @author David Diez
#' @seealso \code{\link{lsegments}}, \code{\link{dlsegments}},
#' \code{\link{CCP}}
#' @keywords Line Segment Algebra
#' @export
#' @examples
#'
#' CCP(xlim = c(-6, 6), ylim = c(-6, 6), ticklabs = 2)
#' x <- c(-2, 0, 2, 4)
#' y <- c(0, 3, 0, 3)
#' ArrowLines(x, y, col = COL[1], ends = c("c", "c"))
#' points(x, y, col = COL[1], pch = 19, cex = 1.2)
#'
#' CCP(xlim = c(-6, 6), ylim = c(-6, 6), ticklabs = 2)
#' x <- c(-3, 0, 1, 3)
#' y <- c(2, 1, -2, 1)
#' ArrowLines(x, y, col = COL[1], ends = c("c", "c"))
#' points(x, y, col = COL[1], pch = 19, cex = 1.2)
#'
#' CCP(xlim = c(-6, 6), ylim = c(-6, 6), ticklabs = 2)
#' x <- seq(-2, 2, 0.01)
#' y <- x^2 - 3
#' ArrowLines(x, y, col = COL[1], ends = c("c", "c"))
#' x <- seq(-2, 2, 1)
#' y <- x^2 - 3
#' points(x, y, col = COL[1], pch = 19, cex = 1.2)
ArrowLines <-
  function(x, y, lty = 1, lwd = 2.5, col = 1,
           length = 0.1, af = 3, cex.pch = 1.2,
           ends = c("a", "a"), ...) {
    lines(x, y, lty = lty, lwd = lwd, col = col, ...)

    ends <- tolower(substr(ends, 1, 1))

    if (ends[1] == "a") {
      X <- c(x[2] + af * diff(x[1:2]), x[1])
      Y <- c(y[2] + af * diff(y[1:2]), y[1])
      graphics::arrows(X[1], Y[1], X[2], Y[2],
        length = length, col = col,
        lwd = lwd
      )
    } else {
      graphics::points(x[1], y[1],
        pch = 19,
        col = col, cex = cex.pch
      )
      if (ends[1] == "o") {
        graphics::points(x[1], y[1],
          pch = 20,
          col = "#FFFFFF", cex = cex.pch
        )
      }
    }

    if (ends[2] == "a") {
      x <- utils::tail(x, 2)
      y <- utils::tail(y, 2)
      X <- c(x[1] + af * diff(x[2:1]), x[2])
      Y <- c(y[1] + af * diff(y[2:1]), y[2])
      graphics::arrows(X[1], Y[1], X[2], Y[2],
        length = length, col = col,
        lwd = lwd
      )
    } else {
      graphics::points(utils::tail(x, 1), utils::tail(y, 1),
        pch = 19,
        col = col, cex = cex.pch
      )
      if (ends[2] == "o") {
        graphics::points(utils::tail(x, 1), utils::tail(y, 1),
          pch = 20,
          col = "#FFFFFF", cex = cex.pch
        )
      }
    }
  }
