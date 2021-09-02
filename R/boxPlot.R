#' Box plot
#'
#' An alternative to \code{boxplot}. Equations are not accepted. Instead, the
#' second argument, \code{fact}, is used to split the data.
#'
#'
#' @param x A numerical vector.
#' @param fact A character or factor vector defining the grouping for
#' side-by-side box plots.
#' @param horiz If \code{TRUE}, the box plot is oriented horizontally.
#' @param width The width of the boxes in the plot. Value between \code{0} and
#' \code{1}.
#' @param lwd Width of lines used in box and whiskers.
#' @param lcol Color of the box, median, and whiskers.
#' @param medianLwd Width of the line marking the median.
#' @param pch Plotting character of outliers.
#' @param pchCex Size of outlier character.
#' @param col Color of outliers.
#' @param add If \code{FALSE}, a new plot is created. Otherwise, the boxplots
#' are added to the current plot for values of \code{TRUE} or a numerical
#' vector specifying the locations of the boxes.
#' @param key The order in which to display the side-by-side boxplots. If
#' locations are specified in \code{add}, then the elements of \code{add} will
#' correspond to the elements of \code{key}.
#' @param axes Whether to plot the axes.
#' @param xlab Label for the x axis.
#' @param ylab Label for the y axis.
#' @param xlim Limits for the x axis.
#' @param ylim Limits for the y axis.
#' @param na.rm Indicate whether \code{NA} values should be removed.
#' @param \dots Additional arguments to plot.
#' @author David Diez
#' @seealso \code{\link{histPlot}}, \code{\link{dotPlot}},
#' \code{\link{densityPlot}}
#' @importFrom graphics plot axis rect lines points
#' @importFrom grDevices rgb
#' @importFrom stats quantile
#' @export
#' @examples
#'
#' # univariarate
#' boxPlot(email$num_char, ylab = "Number of characters in emails")
#'
#' # bivariate
#' boxPlot(email$num_char, email$spam,
#'   xlab = "Spam",
#'   ylab = "Number of characters in emails"
#' )
#'
#' # faded outliers
#' boxPlot(email$num_char, email$spam,
#'   xlab = "Spam",
#'   ylab = "Number of characters in emails",
#'   col = fadeColor("black", 18)
#' )
#'
#' # horizontal plots
#' boxPlot(email$num_char, email$spam,
#'   horiz = TRUE,
#'   xlab = "Spam",
#'   ylab = "Number of characters in emails",
#'   col = fadeColor("black", 18)
#' )
#'
#' # bivariate relationships where categorical data have more than 2 levels
#' boxPlot(email$num_char, email$image,
#'   horiz = TRUE,
#'   xlab = "Number of attached images",
#'   ylab = "Number of characters in emails",
#'   col = fadeColor("black", 18)
#' )
#'
#' # key can be used to restrict to only the desired groups
#' boxPlot(email$num_char, email$image,
#'   horiz = TRUE, key = c(0, 1, 2),
#'   xlab = "Number of attached images (limited to 0, 1, 2)",
#'   ylab = "Number of characters in emails",
#'   col = fadeColor("black", 18)
#' )
#'
#' # combine boxPlot and dotPlot
#' boxPlot(tips$tip, tips$day,
#'   horiz = TRUE, key = c("Tuesday", "Friday")
#' )
#' dotPlot(tips$tip, tips$day,
#'   add = TRUE, at = 1:2 + 0.05,
#'   key = c("Tuesday", "Friday")
#' )
#'
#' # adding a box
#' boxPlot(email$num_char[email$spam == 0], xlim = c(0, 3))
#' boxPlot(email$num_char[email$spam == 1], add = 2, axes = FALSE)
#' axis(1, at = 1:2, labels = c(0, 1))
#' boxPlot(email$num_char[email$spam == 0], ylim = c(0, 3), horiz = TRUE)
#' boxPlot(email$num_char[email$spam == 1], add = 2, horiz = TRUE, axes = FALSE)
#' axis(2, at = 1:2, labels = c(0, 1))
boxPlot <- function(x, fact = NULL, horiz = FALSE, width = 2 / 3, lwd = 1, lcol = "black", medianLwd = 2, pch = 20, pchCex = 1.8, col = grDevices::rgb(0, 0, 0, 0.25), add = FALSE, key = NULL, axes = TRUE, xlab = "", ylab = "", xlim = NULL, ylim = NULL, na.rm = TRUE, ...) {
  if (!is.null(fact)[1]) {
    if (na.rm) {
      keep <- !is.na(x) & !is.na(fact)
      fact <- fact[keep]
      x <- x[keep]
    }
    if (is.null(key)[1]) {
      if (is.factor(fact)[1]) {
        uFact <- levels(fact)
      } else {
        uFact <- sort(unique(fact))
      }
      key <- uFact
    } else {
      uFact <- key
    }
    N <- length(uFact)
    fact <- as.character(fact)
    makePlot <- FALSE
    if (is.logical(add) && add == FALSE) {
      add <- 1:length(uFact)
      makePlot <- TRUE
    }
    if (is.null(xlim)[1]) {
      xlim <- c(1 - width, N + width)
      if (horiz) {
        xlim <- range(x)
      }
    }
    if (is.null(ylim)[1]) {
      ylim <- range(x)
      if (horiz) {
        ylim <- c(1 - width, N + width)
      }
    }

    if (makePlot) {
      plot(0, 0,
        type = "n", xlab = xlab, ylab = ylab,
        xlim = xlim, ylim = ylim, axes = FALSE
      )
      if (axes) {
        axis(ifelse(horiz, 2, 1), at = add, labels = uFact)
        axis(ifelse(horiz, 1, 2))
      }
    }
    if (N > 1) {
      for (i in 1:N) {
        Recall(x[fact == uFact[i]],
          fact = NULL, horiz = horiz, width = width,
          lwd = lwd, lcol = lcol, medianLwd = medianLwd, pch = pch,
          pchCex = pchCex, col = col, add = add[i], na.rm = FALSE, ...
        )
      }
    }
  } else {
    if (na.rm) {
      keep <- !is.na(x)
      x <- x[keep]
    }
    if (is.logical(add) && add == FALSE) {
      add <- 1
      if (is.null(xlim)[1]) {
        xlim <- c(add - width, add + width)
        if (horiz) {
          xlim <- range(x)
        }
      }
      if (is.null(ylim)[1]) {
        ylim <- range(x)
        if (horiz) {
          ylim <- c(1 - width, N + width)
        }
      }
      plot(0, 0,
        type = "n", xlab = xlab, ylab = ylab,
        xlim = xlim, ylim = ylim, axes = FALSE
      )
      if (axes) {
        axis(ifelse(horiz, 1, 2))
      }
    }

    FN <- c(min(x), stats::quantile(x, c(0.25, 0.5, 0.75)), max(x))
    IQR <- FN[4] - FN[2]
    FENCE <- FN[c(2, 4)] + 1.5 * IQR * c(-1, 1)
    below <- x < FENCE[1]
    above <- x > FENCE[2]
    if (!any(below)) {
      FENCE[1] <- FN[1]
    } else {
      FENCE[1] <- min(x[!below])
    }
    if (!any(above)) {
      FENCE[2] <- FN[5]
    } else {
      FENCE[2] <- max(x[!above])
    }
    show <- below | above
    w <- width / 2

    if (horiz) {
      rect(FN[2], add - w, FN[4], add + w, lwd = lwd, border = lcol)
      graphics::lines(rep(FN[3], 2), add + w * c(-1, 1), lwd = medianLwd, col = lcol)
      graphics::lines(c(FENCE[1], FN[2]), rep(add, 2), lwd = lwd, col = lcol)
      graphics::lines(rep(FENCE[1], 2), add + w * c(-1, 1), lwd = lwd, col = lcol)
      graphics::lines(c(FENCE[2], FN[4]), rep(add, 2), lwd = lwd, col = lcol)
      graphics::lines(rep(FENCE[2], 2), add + w * c(-1, 1), lwd = lwd, col = lcol)
      if (any(show)) {
        graphics::points(x[show], rep(add, sum(show)),
          pch = pch, cex = pchCex, col = col
        )
      }
    } else {
      graphics::rect(add - w, FN[2], add + w, FN[4], lwd = lwd, border = lcol)
      graphics::lines(add + w * c(-1, 1), rep(FN[3], 2), lwd = medianLwd, col = lcol)
      graphics::lines(rep(add, 2), c(FENCE[1], FN[2]), lwd = lwd, col = lcol)
      graphics::lines(add + w * c(-1, 1), rep(FENCE[1], 2), lwd = lwd, col = lcol)
      graphics::lines(rep(add, 2), c(FENCE[2], FN[4]), lwd = lwd, col = lcol)
      graphics::lines(add + w * c(-1, 1), rep(FENCE[2], 2), lwd = lwd, col = lcol)
      if (any(show)) {
        graphics::points(rep(add, sum(show)), x[show],
          pch = pch, cex = pchCex, col = col
        )
      }
    }
  }
}
