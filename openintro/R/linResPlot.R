
linResPlot <- function(x, y,
                       axes = FALSE,
                       wBox = TRUE,
                       wLine = TRUE,
                       lCol = '#00000088',
                       lty = 1,
                       lwd = 1,
                       main = '',
                       xlab = '',
                       ylab = '',
                       marRes = NULL,
                       col = fadeColor(4, "88"),
                       pch = 20,
                       cex = 1.5,
                       yR = 0.1,
                       ylim = NULL,
                       subset = NULL,
                       ...){
  if(is.null(ylim)[1]){
    YR <- range(y) + c(-1, 1) * yR * diff(range(y))
  } else {
    YR <- ylim
  }
  plot(x, y,
       axes = axes,
       main = main,
       xlab = '',
       ylab = ylab,
       col = col,
       pch = pch,
       cex = cex,
       ylim = YR,
       ...)
  if(wBox){
    box()
  }
  g <- lm(y ~ x, subset = subset)
  if(wLine){
    abline(g, col = lCol, lty = lty, lwd = lwd)
  }
  if(!is.null(marRes)[1]){
    par(mar = marRes)
  }
  X <- list(x = x)
  y <- y - predict(g, X)
  YR <- range(y) + c(-1, 1) * yR * diff(range(y))
  plot(x, y,
       axes = axes,
       xlab = xlab,
       ylab = '',
       col = col,
       pch = pch,
       cex = cex,
       ylim = YR,
       ...)
  if(wBox){
    box()
  }
  abline(h = 0, lty = 3, col = lCol)
}
