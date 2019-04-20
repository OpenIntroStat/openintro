#' Add a Stacked Dot Plot to an Existing Plot
#'
#' Add a stacked dot plot to an existing plot. The locations for the points in
#' the dot plot are returned from the function in a list.
#'
#'
#' @param x A vector of numerical observations for the dot plot.
#' @param radius The approximate distance that should separate each point.
#' @param seed A random seed (integer). Different values will produce different
#' variations.
#' @param addDots Indicate whether the points should be added to the plot.
#' @param \dots Additional arguments are passed to
#' \code{\link[graphics]{points}}.
#' @return Returns a list with a height that can be used as the upper bound of
#' ylim for a plot, then also the x- and y-coordinates of the points in the
#' stacked dot plot.
#' @author David Diez
#' @seealso \code{\link{dotPlot}}, \code{\link{histPlot}}
#' @keywords stacked dot plot dot plot
#' @export
#' @examples
#'
#' #
#'
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
          graphics::points(x[i], s, ...)
        }
        y[i] <- s
        add  <- FALSE
      }
    }
  }
  invisible(list(max(y)+radius, x, y))
}
