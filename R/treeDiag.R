#' Construct tree diagrams
#'
#' Construct beautiful tree diagrams
#'
#'
#' @param main Character vector with two variable names, descriptions, or
#' questions
#' @param p1 Vector of probabilities for the primary branches
#' @param p2 List for the secondary branches, where each list item should be a
#' numerical vector of probabilities corresponding to the primary branches of
#' \code{p1}
#' @param out1 Character vector of the outcomes corresponding to the primary
#' branches
#' @param out2 Character vector of the outcomes corresponding to the secondary
#' branches
#' @param textwd The width provided for text with a default of \code{0.15}
#' @param solwd The with provided for the solution with a default of \code{0.2}
#' @param SBS A boolean vector indicating whether to place text and probability
#' side-by-side for the primary and secondary branches
#' @param showSol Boolean indicating whether to show the solution in the tree
#' diagram
#' @param solSub An optional list of vectors corresponding to \code{p2} to list
#' alternative text or solutions
#' @param digits The number of digits to show in the solution
#' @param textadj Vertical adjustment of text
#' @param cex.main Size of \code{main} in the plot
#' @param col.main Color of \code{main} in the plot
#' @param showWork Whether work should be shown for the solutions
#' @author David Diez, Christopher Barr
#' @keywords Tree diagram Conditional probability Bayes Theorem
#' @export
#'
#' @examples
#' treeDiag(c("Flight on time?","Luggage on time?"),
#'          c(0.8, 0.2), list(c(0.97, 0.03), c(0.15, 0.85)))
#' treeDiag(c("Breakfast?","Go to class"), c(.4,.6),
#'          list(c(0.4,0.36,0.34), c(0.6,0.3,0.1)), c("Yes", "No"),
#'          c("Statistics","English","Sociology"), showWork = TRUE)
#' treeDiag(c("Breakfast?","Go to class"), c(0.4, 0.11, 0.49),
#'          list(c(0.4, 0.36, 0.24), c(0.6, 0.3, 0.1), c(0.1, 0.4, 0.5)),
#'          c("one", "two", "three"), c("Statistics", "English", "Sociology"))
#' treeDiag(c("Dow Jones rise?", "NASDAQ rise?"),
#'          c(0.53, 0.47), list(c(0.75, 0.25), c(0.72, 0.28)),
#'          solSub = list(c("(a)", "(b)"), c("(c)", "(d)")), solwd = 0.08)
treeDiag <- function(main,
                     p1,
                     p2,
                     out1 = c("Yes", "No"),
                     out2 = c("Yes", "No"),
                     textwd = 0.15,
                     solwd = 0.2,
                     SBS = c(TRUE, TRUE),
                     showSol = TRUE,
                     solSub = NULL,
                     digits = 4,
                     textadj = 0.015,
                     cex.main = 1.3,
                     col.main = "#999999",
                     showWork = FALSE) {

  # _____ Checks _____ #
  SBS <- rep(SBS, 2)
  if (length(p1) != length(out1)) {
    stop("p1 and out1 must have the same length")
  }
  P1 <- format(p1)
  P2 <- list()
  for (i in 1:length(p1)) {
    P2[[i]] <- format(p2[[i]])
    if (length(p2[[i]]) != length(out2)) {
      stop(paste(
        "Each list item of p2 must",
        "have the same length as out2"
      ))
    }
  }

  # _____ Prepare Formatting _____ #
  x <- (0.75 - 2 * textwd) / 2
  x <- c(
    0,
    x,
    x + textwd,
    2 * x + textwd,
    2 * x + 2 * textwd + 0.05
  )
  y1 <- c(0.4, -0.4)
  y2 <- c(0.21, -0.21)
  n1 <- length(p1)
  n2 <- length(p2[[1]])
  if (n1 == 2 && n2 > 2) {
    y2 <- seq(0.23, -0.23, len = n2)
  } else if (n1 > 2 && n2 == 2) {
    y1 <- seq(0.5, -0.5, len = n1)
    y2 <- seq(0.13, -0.13, len = n2)
  } else if (n1 > 2 && n2 > 2) {
    y1 <- seq(0.5, -0.5, len = n1)
    y2 <- seq(0.1, -0.1, len = n2)
  }

  # _____ Basic Plot _____ #
  graphics::par(mar = rep(0, 4))
  graphics::plot(1,
    type = "n",
    axes = FALSE,
    ylim = c(-0.76, 1.03),
    xlim = c(0, 0.8 + solwd),
    xlab = "",
    ylab = ""
  )
  graphics::text(mean(x[2:3]), 0.95, main[1],
    cex = cex.main,
    col = col.main
  )
  graphics::text(mean(x[4:5]), 0.95, main[2],
    cex = cex.main,
    col = col.main
  )

  # _____ Branches _____ #
  for (i in 1:n1) {
    graphics::lines(x[1:2], c(0, y1[i]))
    graphics::lines(x[2:3], c(y1[i], y1[i]), lty = 2)
    if (SBS[1]) {
      temp <- paste(out1[i], P1[i], sep = ",  ")
      graphics::text(mean(x[2:3]), y1[i] - textadj, temp, pos = 3)
    } else {
      graphics::text(mean(x[2:3]), y1[i], P1[i] + textadj, pos = 1)
      graphics::text(mean(x[2:3]), y1[i], out1[i] - textadj, pos = 3)
    }
    for (j in 1:n2) {
      graphics::lines(x[3:4], y1[i] + c(0, y2[j]))
      graphics::lines(x[4:5], y1[i] + c(y2[j], y2[j]), lty = 2)
      if (SBS[2]) {
        temp <- paste(out2[j], P2[[i]][j], sep = ",  ")
        graphics::text(mean(x[4:5]),
          y1[i] + y2[j] - textadj,
          temp,
          pos = 3
        )
      } else {
        graphics::text(mean(x[4:5]), y1[i] + y2[j], P2[[i]][j], pos = 1)
        graphics::text(mean(x[4:5]), y1[i] + y2[j], out2[j], pos = 3)
      }
      if (showSol) {
        sol <- format(round(p1[i] * p2[[i]][j], digits),
          scientific = FALSE
        )
        if (showWork) {
          temp <- paste(p1[i], p2[[i]][j], sep = "*")
          sol <- paste(temp, sol, sep = "  =  ")
        }
        if (!is.null(solSub)[1]) {
          sol <- solSub[[i]][j]
        }
        graphics::text(x[5], y1[i] + y2[j], sol, pos = 4)
      }
    }
  }
}
