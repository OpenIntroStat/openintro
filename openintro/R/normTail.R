`normTail` <- function(m = 0,
                       s = 1,
                       L = NULL,
                       U = NULL,
                       M = NULL,
                       df = 1000,
                       curveColor = 1,
                       border = 1,
                       col = '#CCCCCC',
                       xlim = NULL,
                       ylim = NULL,
                       xlab = '',
                       ylab = '',
                       digits = 2,
                       axes = 1,
                       detail = 999,
                       xLab = c('number', 'symbol'),
                       cex.axis = 1,
                       xAxisIncr = 1,
                       add = FALSE,
                       ...) {
  if (is.null(xlim)[1]) {
    xlim <- m + c(-1, 1) * 3.5 * s
  }
  temp <- diff(range(xlim))
  x    <- seq(xlim[1] - temp / 4,
              xlim[2] + temp / 4,
              length.out = detail)
  y    <- dt((x - m) / s, df) / s
  if (is.null(ylim)[1]) {
    ylim <- range(c(0, y))
  }
  if (add) {
    lines(x, y, col = curveColor, ...)
  } else {
    plot(x, y,
         type = 'l',
         xlim = xlim,
         ylim = ylim,
         xlab = xlab,
         ylab = ylab,
         axes = FALSE,
         col = curveColor,
         ...)
  }
  if (!is.null(L[1])) {
    these <- (x <= L)
    X <- c(x[these][1], x[these], rev(x[these])[1])
    Y <- c(0, y[these], 0)
    polygon(X, Y, border = border, col = col)
  }
  if (!is.null(U[1])) {
    these <- (x >= U)
    X <- c(x[these][1], x[these], rev(x[these])[1])
    Y <- c(0, y[these], 0)
    polygon(X, Y, border = border, col = col)
  }
  if (all(!is.null(M[1:2]))) {
    these <- (x >= M[1] & x <= M[2])
    X <- c(x[these][1], x[these], rev(x[these])[1])
    Y <- c(0, y[these], 0)
    polygon(X, Y, border = border, col = col)
  }

  if (!add && (axes == 1 || axes > 2)) {
    if (xLab[1] == 'symbol') {
      xAt  <- m + (-3:3) * s
      xLab <- expression(mu - 3 * sigma,
                         mu - 2 * sigma,
                         mu - sigma,
                         mu, 
                         mu + sigma,
                         mu + 2 * sigma,
                         mu + 3 * sigma)
    } else if (xLab[1] != 'number') {
      stop('Argument "xLab" not recognized.\n')
    } else {
      temp <- s * seq(xAxisIncr,
                      max(abs(xlim - m)) / s,
                      xAxisIncr)
      xAt <- m + c(-temp, 0, temp)
      xLab <- round(xAt, digits = digits)
    }
  }
  if (!add && axes > 2) {
    axis(1, at = xAt, labels = xLab, cex.axis = cex.axis)
    buildAxis(2, c(y, 0), n = 3, nMax = 3, cex.axis = cex.axis)
  } else if (!add && axes > 1) {
    buildAxis(2, c(y, 0), n = 3, nMax = 3, cex.axis = cex.axis)
  } else if (!add && axes > 0) {
    axis(1, at = xAt, labels = xLab, cex.axis = cex.axis)
  }
  abline(h = 0)
}
