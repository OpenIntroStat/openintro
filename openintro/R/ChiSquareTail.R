
ChiSquareTail <- function(U,
                          df,
                          xlim = c(0, 10),
                          col = fadeColor("black", "22"),
                          axes = TRUE,
                          ...) {
  x <- c(0, seq(xlim[1], xlim[2] + 3, length.out = 300))
  y <- c(0, dchisq(x[-1], df))
  plot(x, y, type = 'l', axes = FALSE, xlim = xlim)
  abline(h = 0)
  if (axes) {
    axis(1)
  }

  these <- which(x >= U)
  X <- x[c(these[1], these, rev(these)[1])]
  Y <- c(0, y[these], 0)
  polygon(X, Y, col = col)
}
