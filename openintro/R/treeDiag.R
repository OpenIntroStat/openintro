
treeDiag <- function(main,
                     p1,
                     p2,
                     out1 = c('Yes', 'No'),
                     out2 = c('Yes','No'),
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
      stop(paste("Each list item of p2 must",
                 "have the same length as out2"))
    }
  }
  
  # _____ Prepare Formatting _____ #
  x <- (0.75 - 2 * textwd) / 2
  x <- c(0,
         x,
         x + textwd,
         2 * x + textwd,
         2 * x + 2 * textwd + 0.05)
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
  par(mar = rep(0, 4))
  plot(1,
       type = 'n',
       axes = FALSE,
       ylim = c(-0.76, 1.03),
       xlim = c(0 ,0.8 + solwd),
       xlab = '',
       ylab = '')
  text(mean(x[2:3]), 0.95, main[1],
       cex = cex.main,
       col = col.main)
  text(mean(x[4:5]), 0.95, main[2],
       cex = cex.main,
       col = col.main)
  
  # _____ Branches _____ #
  for (i in 1:n1) {
    lines(x[1:2], c(0, y1[i]))
    lines(x[2:3], c(y1[i], y1[i]), lty = 2)
    if (SBS[1]) {
      temp <- paste(out1[i], P1[i], sep = ",  ")
      text(mean(x[2:3]), y1[i] - textadj, temp, pos = 3)
    } else {
      text(mean(x[2:3]), y1[i], P1[i] + textadj, pos = 1)
      text(mean(x[2:3]), y1[i], out1[i] - textadj, pos = 3)
    }
    for (j in 1:n2) {
      lines(x[3:4], y1[i] + c(0, y2[j]))
      lines(x[4:5], y1[i] + c(y2[j], y2[j]), lty = 2)
      if (SBS[2]) {
        temp <- paste(out2[j], P2[[i]][j], sep = ",  ")
        text(mean(x[4:5]),
             y1[i] + y2[j] - textadj,
             temp,
             pos = 3)
      } else {
        text(mean(x[4:5]), y1[i] + y2[j], P2[[i]][j], pos = 1)
        text(mean(x[4:5]), y1[i] + y2[j], out2[j], pos = 3)
      }
      if (showSol) {
        sol <- format(round(p1[i] * p2[[i]][j], digits),
                      scientific = FALSE)
        if (showWork) {
          temp <- paste(p1[i], p2[[i]][j], sep = "*")
          sol  <- paste(temp, sol, sep = "  =  ")
        }
        if (!is.null(solSub)[1]) {
          sol  <- solSub[[i]][j]
        }
        text(x[5], y1[i] + y2[j], sol, pos = 4)
      }
    }
  }
}
