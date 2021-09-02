#' Custom Mosaic Plot
#'
#' Plot a mosaic plot custom built for a particular figure.
#'
#'
#' @param formula Formula describing the variable relationship.
#' @param data Data frame for the variables, optional.
#' @param col Colors for plotting.
#' @param border Ignored.
#' @param dir Ignored.
#' @param off Fraction of white space between each box in the plot.
#' @param cex.axis Axis label size.
#' @param col.dir Direction to lay out colors.
#' @param flip Whether to flip the ordering of the vertical (\code{"v"}) and/or
#' horizontal (\code{"h"}) ordering in the plot.
#' @param \dots Ignored.
#' @author David Diez
#' @export
#' @examples
#'
#' data(email)
#' data(COL)
#' email$spam <- ifelse(email$spam == 0, "not\nspam", "spam")
#' MosaicPlot(number ~ spam, email, col = COL[1:3], off = 0.02)
MosaicPlot <- function(formula,
                       data,
                       col = "#00000022",
                       border = 1,
                       dir = c("v", "h"),
                       off = 0.01,
                       cex.axis = 0.7,
                       col.dir = "v",
                       flip = c("v"),
                       ...) {
  if (missing(data)) {
    tab <- table(stats::model.frame(formula))
  } else {
    tab <- table(stats::model.frame(formula, data = data))
  }
  n1 <- nrow(tab)
  n2 <- ncol(tab)
  if ("v" %in% flip) {
    tab <- tab[, n2:1]
  }
  if ("h" %in% flip) {
    tab <- tab[n1:1, ]
  }
  col <- rep(col, max(n1, n2))

  x <- apply(tab, 1, sum)

  PosAfterOffset <- function(x, off) {
    n <- length(x)
    x <- x / sum(x)
    x. <- x * (1 - off * (n - 1))
    tmp <- c(0, utils::head(rep(cumsum(x.), rep(2, n)), -1))
    return(tmp + rep(off * seq(0, n - 1), rep(2, n)))
  }
  x <- PosAfterOffset(x, off)
  y <- apply(tab, 1, PosAfterOffset, off = off)

  graphics::par(xaxs = "i")
  graphics::plot(5,
    xlab = "", ylab = "", axes = FALSE, type = "n",
    xlim = 0:1, ylim = 0:1
  )

  for (i in 1:n1) {
    for (j in 1:n2) {
      rect(x[2 * i - 1], y[2 * j - 1, i],
        x[2 * i], y[2 * j, i],
        col = col[ifelse(col.dir == "v", i, j)]
      )
    }
  }
  axis.1.pos <- apply(matrix(x, 2), 2, mean)
  axis.2.pos <- apply(matrix(y[, 1], 2), 2, mean)

  graphics::par(mgp = c(0, -0.2, 0))
  graphics::axis(3, axis.1.pos,
    labels = rownames(tab),
    lwd = 0, , cex.axis = cex.axis
  )
  graphics::par(mgp = rep(0.2, 3))
  graphics::axis(2, axis.2.pos,
    labels = colnames(tab),
    lwd = 0, cex.axis = cex.axis
  )
}

# library(openintro)
# data(email)
# data(COL)
# email$spam <- ifelse(email$spam == 0, "not\nspam", "spam")
# MosaicPlot(number ~ spam, email, col = COL[1:3], off = 0.02)
