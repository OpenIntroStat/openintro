dotPlotStack <- function(x, radius=1, seed=1, addDots=TRUE, ...){
  set.seed(seed)
  x <- sample(x)
  y <- rep(NA, length(x))
  y[1] <- 1
  for(i in 2:length(x)){
    add <- TRUE
    for(s in seq(radius, i*radius, radius/20)){
      these <- 1:(i-1)
      dx    <- (x[i] - x[these])^2
      dy    <- (s - y[these])^2
      if(any(dx+dy < radius^2) || !add){
        next
      } else {
        if(addDots){
          points(x[i], s, ...)
        }
        y[i] <- s
        add  <- FALSE
      }
    }
  }
  invisible(list(max(y)+radius, x, y))
}
