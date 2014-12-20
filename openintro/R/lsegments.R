lsegments <- function(x = c(3, 7),
                      l = "o",
                      r = "c",
                      ticks = TRUE,
                      labs = 1,
                      add = 0,
                      ylim = c(-0.75, 0.25)){
  x    <- sort(x)
  xlim <- range(x) + 0.15 * c(-1, 1) * diff(range(x))
  if (add == 0) {
    par(mar = rep(0, 4))
    plot(1,
         xlim = xlim,
         ylim = ylim,
         axes = FALSE,
         type = "n")
  }
  code <- ifelse(x[1] < -999 && x[2] > 999, 3,
                 ifelse(x[1] < -999, 1,
                        ifelse(x[2] > 999, 2, 0)))
  if(code > 0){
    arrows(x[1], add, x[2], add, length = 0.1, code = code)
  } else {
    lines(x, rep(add, 2))
  }
  if(x[1] > -1000){
    points(x[1], add, pch = 19, col = "#FFFFFF")
    points(x[1], add, pch = ifelse(l == "c", 19, 1))
  }
  if(x[2] < 1000){
    points(x[2], add, pch = 19, col = "#FFFFFF")
    points(x[2], add, pch = ifelse(r == "c", 19, 1))
  }
  if(ticks && code == 0){
    X <- c(round(x[1] + 0.51), round(x[2] - 0.51))
    X <- X[1]:X[2]
    segments(X, add - 0.05, X, add + 0.05)
  }
  if(labs[1] > 0 && code != 3){
    if(code == 0){
      text(x, rep(add, 2), x, pos = labs)
    } else {
      text(x[3 - code], add, x[3 - code], pos = labs)
    }
  }
}
