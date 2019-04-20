#' Create a Line Segment Plot
#'
#' Creae a simple plot showing a line segment.
#'
#'
#' @param x The endpoints of the interval. Values larger (smaller) than 999
#' (-999) will be interpreted as (negative) infinity.
#' @param l Indicate whether the left end point should be open (\code{"o"}) or
#' closed (\code{"c"}).
#' @param r Indicate whether the right end point should be open (\code{"o"}) or
#' closed (\code{"c"}).
#' @param ticks Indicate whether to show tick marks (\code{TRUE}) or not
#' (\code{FALSE}).
#' @param labs The position for the point labels. Set to \code{0} if no labels
#' should be shown.
#' @param add Indicate whether the line segment should be added to an existing
#' plot (\code{TRUE}) or a new plot should be created (\code{FALSE}).
#' @param ylim A vector of length 2 specifying the vertical plotting limits,
#' which may be useful for fine-tuning plots. The default is
#' \code{c(-0.75,0.25)}.
#' @author David Diez
#' @seealso \code{\link{dlsegments}}, \code{\link{CCP}},
#' \code{\link{ArrowLines}}
#' @keywords Line Segment Algebra
#' @export
#' @examples
#'
#' lsegments(c(2,7), "o", "c", ylim=c(-0.3, 0.2))
#'
#' lsegments(c(5,7), "c", "c", ylim=c(-0.3, 0.2))
#'
#' lsegments(c(4,1000), "o", "o", ylim=c(-0.3, 0.2))
#'
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
    graphics::par(mar = rep(0, 4))
    graphics::plot(1,
         xlim = xlim,
         ylim = ylim,
         axes = FALSE,
         type = "n")
  }
  code <- ifelse(x[1] < -999 && x[2] > 999, 3,
                 ifelse(x[1] < -999, 1,
                        ifelse(x[2] > 999, 2, 0)))
  if(code > 0){
    graphics::arrows(x[1], add, x[2], add, length = 0.1, code = code)
  } else {
    lines(x, rep(add, 2))
  }
  if(x[1] > -1000){
    graphics::points(x[1], add, pch = 19, col = "#FFFFFF")
    graphics::points(x[1], add, pch = ifelse(l == "c", 19, 1))
  }
  if(x[2] < 1000){
    graphics::points(x[2], add, pch = 19, col = "#FFFFFF")
    graphics::points(x[2], add, pch = ifelse(r == "c", 19, 1))
  }
  if(ticks && code == 0){
    X <- c(round(x[1] + 0.51), round(x[2] - 0.51))
    X <- X[1]:X[2]
    graphics::segments(X, add - 0.05, X, add + 0.05)
  }
  if(labs[1] > 0 && code != 3){
    if(code == 0){
      graphics::text(x, rep(add, 2), x, pos = labs)
    } else {
      graphics::text(x[3 - code], add, x[3 - code], pos = labs)
    }
  }
}
