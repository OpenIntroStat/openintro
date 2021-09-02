#' Plot upper tail in chi-square distribution
#'
#' Plot a chi-square distribution and shade the upper tail.
#'
#'
#' @param U Cut off for the upper tail.
#' @param df Degrees of freedom.
#' @param xlim Limits for the plot.
#' @param col Color of the shading.
#' @param axes Whether to plot an x-axis.
#' @param \dots Currently ignored.
#' @return Nothing is returned from the function.
#' @author David Diez
#' @seealso \code{\link{normTail}}
#' @export
#' @examples
#'
#' data(COL)
#' ChiSquareTail(11.7,
#'   7,
#'   c(0, 25),
#'   col = COL[1]
#' )
ChiSquareTail <- function(U,
                          df,
                          xlim = c(0, 10),
                          col = fadeColor("black", "22"),
                          axes = TRUE,
                          ...) {
  x <- c(0, seq(xlim[1], xlim[2] + 3, length.out = 300))
  y <- c(0, stats::dchisq(x[-1], df))
  graphics::plot(x, y, type = "l", axes = FALSE, xlim = xlim)
  graphics::abline(h = 0)
  if (axes) {
    axis(1)
  }

  these <- which(x >= U)
  X <- x[c(these[1], these, rev(these)[1])]
  Y <- c(0, y[these], 0)
  graphics::polygon(X, Y, col = col)
}
