PlotWLine <- function(x, y,
                      xlab = '',
                      ylab = '',
                      col = fadeColor(4, "88"),
                      cex = 1.2,
                      pch = 20,
                      n = 4,
                      nMax = 4,
                      yR = 0.1,
                      axes = TRUE,
                      ...){
  par(las = 0)
  yR <- range(y) + c(-1, 1) * 0.1 * diff(range(y))
  plot(x, y,
       pch = 20,
       cex = cex,
       col = col,
       xlab = '',
       ylab = '',
       ylim = yR,
       axes = FALSE,
       ...)
  if (axes) {
    buildAxis(1, x, n, nMax = nMax)
  }
  mtext(xlab, 1, 1.8)
  mtext(ylab, 2, 2.8)
  par(mgp = c(2.8, 0.75, 0), las = 1)
  if (axes) {
    buildAxis(2, y, n, nMax = nMax)
  }
  g <- lm(y ~ x)
  abline(g, col = 1, lwd = 1.5)
}