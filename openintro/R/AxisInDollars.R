AxisInDollars <- function(
    side,
    at,
    include.symbol = TRUE,
    simplify = TRUE, ...) {
  at. <- at
  if (simplify) {
    order.of.magnitude <- log10(median(at))
    triple.order <- floor(order.of.magnitude / 3)
    if (triple.order > 0) {
      char <- switch(triple.order,
          `1` = "k", `2` = "m", `3` = "b", `4` = "t")
      at. <- paste0(at. / 10^(3 * triple.order), ifelse(at. > 0, char, ""))
    }
  }
  if (include.symbol) {
    at. <- paste0("$", at.)
  }
  axis(side, at, at., ...)
}
