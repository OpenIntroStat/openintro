#' Build Better Looking Axis Labels for US Dollars
#'
#' Convert and simplify axis labels that are in US Dollars.
#'
#'
#' @param side An integer specifying which side of the plot the axis is to be
#' drawn on. The axis is place as follows: 1 = below, 2 = left, 3 = above and
#' 4 = right.
#' @param at The points at which tick-marks are to be drawn.
#' @param include.symbol Whether to include a dollar or percent symbol, where
#' the symbol chosen depends on the function.
#' @param simplify For dollars, simplify the amount to use abbreviations of
#' \code{"k"}, \code{"m"}, \code{"b"}, or \code{"t"} when numbers tend to be in
#' the thousands, millions, billions, or trillions, respectively.
#' @param \dots Arguments passed to \code{\link{axis}}
#' @return The numeric locations on the axis scale at which tick marks were
#' drawn when the plot was first drawn.
#' @author David Diez
#' @seealso \code{\link{buildAxis}} \code{\link{AxisInDollars}} \code{\link{AxisInPercent}}
#' @export
#' @examples
#'
#' x <- sample(50e6, 100)
#' hist(x, axes = FALSE)
#' AxisInDollars(1, pretty(x))
#'
AxisInDollars <- function(
    side,
    at,
    include.symbol = TRUE,
    simplify = TRUE, ...) {
  at. <- at
  if (simplify) {
    order.of.magnitude <- log10(stats::median(at))
    triple.order <- floor(order.of.magnitude / 3)
    if (triple.order > 0) {
      char <- switch(triple.order,
          `1` = "k", `2` = "m", `3` = "b", `4` = "t")
      at. <- paste0(at. / 10^(3 * triple.order), ifelse(abs(at.) > 0, char, ""))
    }
  }
  if (include.symbol) {
    at. <- paste0(
        ifelse(at < 0, "-", ""),
        "$",
        gsub("-", "", at., fixed = TRUE))
  }
  axis(side, at, at., ...)
}
