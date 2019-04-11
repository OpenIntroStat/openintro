AxisInPercent <- function(
    side,
    at,
    include.symbol = TRUE,
    simplify = TRUE, ...) {
  at. <- at
  if (include.symbol) {
    at. <- paste0(at., "%")
  }
  axis(side, at, at., ...)
}
