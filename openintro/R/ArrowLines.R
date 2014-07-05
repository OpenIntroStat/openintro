ArrowLines <-
function(x, y, lty=1, lwd=2.5, col=1,
                       length=0.1, af=3, cex.pch=1.2,
                       ends=c('a', 'a'), ...) {
  lines(x, y, lty=lty, lwd=lwd, col=col, ...)
  
  ends <- tolower(substr(ends, 1, 1))
  
  if (ends[1] == 'a') {
    X <- c(x[2] + af*diff(x[1:2]), x[1])
    Y <- c(y[2] + af*diff(y[1:2]), y[1])
    arrows(X[1], Y[1], X[2], Y[2],
           length=length, col=col,
           lwd=lwd)
  } else {
    points(x[1], y[1], pch=19,
           col=col, cex=cex.pch)
    if (ends[1] == 'o') {
      points(x[1], y[1], pch=20,
             col='#FFFFFF', cex=cex.pch)
    }
  }
  
  if (ends[2] == 'a') {
    x <- tail(x, 2)
    y <- tail(y, 2)
    X <- c(x[1] + af*diff(x[2:1]), x[2])
    Y <- c(y[1] + af*diff(y[2:1]), y[2])
    arrows(X[1], Y[1], X[2], Y[2],
           length=length, col=col,
           lwd=lwd)
  } else {
    points(tail(x,1), tail(y,1), pch=19,
           col=col, cex=cex.pch)
    if (ends[2] == 'o') {
      points(tail(x,1), tail(y,1), pch=20,
             col='#FFFFFF', cex=cex.pch)
    }
  }
}
