#' Exploratory data analysis plot
#'
#' Explore different plotting methods using a click interface.
#'
#'
#' @aliases edaPlot createEdaOptions guessMethod plotNothing fitNormal
#' makePlotIcon
#' @param dataFrame A data frame.
#' @param Col A vector containing six colors. The colors may be given in any
#' form.
#' @author David Diez
#' @seealso \code{\link{histPlot}}, \code{\link{densityPlot}},
#' \code{\link{boxPlot}}, \code{\link{dotPlot}}
#' @export
#' @examples
#'
#' data(mlbbat10)
#' bat <- mlbbat10[mlbbat10$at_bat > 200, ]
#' # edaPlot(bat)
#'
#' data(mariokart)
#' mk <- mariokart[mariokart$total_pr < 100, ]
#' # edaPlot(mk)
edaPlot <- function(dataFrame,
                    Col = c(
                      "#888888", "#FF0000", "#222222",
                      "#FFFFFF", "#CCCCCC", "#3377AA"
                    )) {
  graphics::par(fin = c(6, 3))
  n <- dim(dataFrame)[2]
  vNames <- names(dataFrame)

  dataX <- 1
  dataY <- c()

  x <- dataFrame[, dataX]
  y <- dataFrame[, dataY]
  plotMethod <- guessMethod(x, y)

  edaing <- TRUE
  while (edaing) {
    x <- dataFrame[, dataX]
    y <- dataFrame[, dataY]

    pMethods <- matrix(c(
      "scatterPlot", "boxPlot",
      "histogram", "barPlot",
      "mosaicPlot", "",
      "fitLinear", "fitNormal"
    ),
    ncol = 2,
    byrow = TRUE
    )

    # ===> create the first plot <===#
    graphics::par(mfrow = c(1, 2), mar = c(4, 4, 3, 1))
    if (length(x) == 0 & length(y) == 0) {
      plotNothing()
    } else if (plotMethod == "scatterPlot") {
      if (length(x) == 0) {
        dataX <- dataY
        dataY <- c()
        x <- dataFrame[, dataX]
        y <- dataFrame[, dataY]
      }
      if (length(y) == 0) {
        plot(x, main = "plot(x)", xlab = vNames[dataX])
      } else {
        plot(x, y,
          main = "plot(x, y)",
          xlab = vNames[dataX],
          ylab = vNames[dataY]
        )
      }
      if (!is.numeric(x) | !is.numeric(y)) {
        cat("warning: x and/or y is not numerical, i.e. this plot may not look like a scatterplot.\n")
      }
    } else if (plotMethod == "boxPlot") {
      if (length(x) == 0) {
        dataX <- dataY
        dataY <- c()
        x <- dataFrame[, dataX]
        y <- dataFrame[, dataY]
      }
      if (length(y) == 0) {
        if (is.numeric(x)) {
          graphics::boxplot(x, main = "graphics::boxplot(x)", xlab = vNames[dataX])
        } else {
          cat(
            "warning: x-variable coerced",
            "into a numerical status.\n"
          )
          graphics::boxplot(y, main = "graphics::boxplot(as.numeric(x))")
        }
      } else {
        if (is.numeric(y)) {
          graphics::boxplot(y ~ x,
            main = "graphics::boxplot(y ~ x)",
            xlab = vNames[dataX], ylab = vNames[dataY]
          )
        } else {
          cat(
            "warning: y-variable coerced into",
            "a numerical status.\n"
          )
          graphics::boxplot(as.numeric(y) ~ x,
            main = "graphics::boxplot(as.numeric(y) ~ x)",
            xlab = vNames[dataX],
            ylab = vNames[dataY]
          )
        }
      }
    } else if (plotMethod == "histogram") {
      if (length(x) == 0) {
        dataX <- dataY
        dataY <- c()
        x <- dataFrame[, dataX]
        y <- dataFrame[, dataY]
      }
      if (!is.numeric(x)) {
        graphics::hist(as.numeric(x),
          main = "hist(as.numeric(x))",
          xlab = vNames[dataX]
        )
        cat("warning: data coerced into numeric status.\n")
      } else {
        graphics::hist(x, main = "hist(x)", xlab = vNames[dataX])
      }
      if (length(y) > 0) {
        cat(
          "warning: only the first variable was",
          "used in the plot.\n"
        )
      }
    } else if (plotMethod == "barPlot") {
      if (length(x) == 0) {
        dataX <- dataY
        dataY <- c()
        x <- dataFrame[, dataX]
        y <- dataFrame[, dataY]
      }
      if (length(y) == 0) {
        graphics::barplot(table(x),
          main = "graphics::barplot(table(x))",
          xlab = vNames[dataX]
        )
        cat(
          "x was put into a table before",
          "being loaded into graphics::barplot().\n"
        )
      } else {
        graphics::barplot(table(x),
          table(y),
          main = "graphics::barplot(table(x), table(y))",
          xlab = vNames[dataX],
          ylab = vNames[dataY]
        )
        cat(
          "both variables put into tables before",
          "being loaded into graphics::barplot().\n"
        )
      }
    } else if (plotMethod == "mosaicPlot") {
      if (length(x) == 0) {
        dataX <- dataY
        dataY <- c()
        x <- dataFrame[, dataX]
        y <- dataFrame[, dataY]
      }
      if (length(y) == 0) {
        graphics::mosaicplot(table(x),
          main = "graphics::mosaicplot(table(x))",
          xlab = vNames[dataX]
        )
        cat(
          "x was put into a table before being",
          "loaded into graphics::mosaicplot().\n"
        )
      } else {
        graphics::mosaicplot(table(data.frame(x, y)),
          main = "graphics::mosaicplot(table(data.frame(x,y)))",
          xlab = vNames[dataX],
          ylab = vNames[dataY]
        )
      }
    } else if (plotMethod == "fitLinear") {
      if (length(x) == 0) {
        dataX <- dataY
        dataY <- c()
        x <- dataFrame[, dataX]
        y <- dataFrame[, dataY]
      }
      if (length(y) == 0) {
        plot(x, main = "plot(x)", xlab = vNames[dataX])
      } else {
        plot(x, y,
          main = "plot(x, y)",
          xlab = vNames[dataX],
          ylab = vNames[dataY]
        )
      }
      if (length(x) == 0 | length(y) == 0) {
        cat(
          "warning: x and/or y is not numerical,",
          "i.e. this plot may not look like",
          "a scatterplot.\n"
        )
        cat(
          "warning: must provide two variables",
          "to fit a line.\n"
        )
      } else {
        if (!is.numeric(x) | !is.numeric(y)) {
          cat(
            "warning: variables must be numeric",
            "to fit a line.\n"
          )
        } else {
          graphics::abline(stats::lm(y ~ x))
          graphics::text("abline(lm(y ~ x))", line = 0)
        }
      }
    } else if (plotMethod == "fitNormal") {
      if (length(x) == 0) {
        dataX <- dataY
        dataY <- c()
        x <- dataFrame[, dataX]
        y <- dataFrame[, dataY]
      }
      fitNormal(x, y, Col[1], xlab = vNames[dataX])
    } else {
      plotNothing()
    }


    graphics::par(mar = rep(0, 4))
    graphics::plot(c(-0.05, 1.07), c(-0.02, 1.01), type = "n", axes = FALSE)
    createEdaOptions(dataFrame, dataX, dataY, plotMethod, Col)

    # ===> determine action <===#
    awaitingAction <- TRUE
    while (awaitingAction) {
      action <- graphics::locator(1)

      n <- dim(dataFrame)[2]
      L <- min(c(0.45 / (n + 1), 0.05))
      c1 <- action$x > 0.94
      c2 <- action$x < 1.06
      c3 <- action$y > 0.97
      c4 <- action$y < 1.03
      if (c1 & c2 & c3 & c4) {
        # checking for exit
        cat("exit\n")
        awaitingAction <- FALSE
        edaing <- FALSE
      } else if (action$x > 0.35) {
        # want to apply to a plotting method
        cat("plot\n")
        X <- rep(c(.55, .8), rep(4, 2))[-7]
        Y <- rep(c(0.815 - (0:3) * 0.22), 2)[-7]
        D <- ((X - action$x)^2 + (Y - action$y)^2)
        plotMethod <- pMethods[-7][which.min(D)]
        awaitingAction <- FALSE
      } else if (action$x < 5 * L / 4) {
        cat("x-y\n")
        X <- c(rep(L / 2, n), rep(0, n))
        Y <- c(0.85 - 2 * ((1:n) - 1) * L, 0.85 - 2 * ((1:n) - 1) * L + L / 2)
        D <- ((X - action$x)^2 + (Y - action$y)^2)
        N <- which.min(D)
        if (N < n + 1) {
          # update x
          if (length(dataX) == 0) {
            dataX <- N
          } else if (dataX == N) {
            dataX <- c()
          } else {
            dataX <- N
          }
        } else {
          if (length(dataY) == 0) {
            dataY <- N - n
          } else if (dataY == N - n) {
            dataY <- c()
          } else {
            dataY <- N - n
          }
        }
        awaitingAction <- FALSE
      }
    }
  }
}

guessMethod <- function(x, y) {
  return("scatterPlot")
}

plotNothing <- function(mar = rep(0, 4), main = "") {
  graphics::par(mar = mar)
  graphics::plot(0:1, 0:1, type = "n", main = main)
}

fitNormal <- function(x, y, Col, ...) {
  if (!is.numeric(x)) {
    graphics::hist(as.numeric(x),
      probability = TRUE,
      main = "hist(as.numeric(x), probability=TRUE)",
      ...
    )
    cat("warning: data coerced into numeric status.\n")
  } else {
    graphics::hist(x,
      probability = TRUE,
      main = "hist(x, probability=TRUE)",
      ...
    )
  }
  if (length(y) > 0) {
    cat(
      "warning: only the first variable was",
      "used in the plot.\n"
    )
  }
  x <- as.numeric(x)
  mu <- mean(x)
  sigma <- stats::sd(x)
  m <- min(x) - sigma
  M <- max(x) + sigma
  X <- seq(m, M, length.out = 500)
  Y <- stats::dnorm(X, mu, sigma)
  lines(X, Y, col = Col)
}

# ===> createEdaOptions <===#
createEdaOptions <- function(dataFrame, dataX, dataY, plotMethod, Col) {
  n <- dim(dataFrame)[2]
  L <- min(c(0.45 / (n + 1), 0.05))

  graphics::text(L, 0.95, "Variables", pos = 4)
  for (i in 1:n) {
    y <- 0.85 - 2 * (i - 1) * L
    COL <- ifelse(i %in% c(dataX, dataY), Col[2], Col[3])
    graphics::text(L, y + L / 2,
      names(dataFrame)[i],
      pos = 4,
      col = COL,
      cex = 0.8
    )
    COL <- ifelse(i == dataX, Col[2], Col[3])
    if (length(dataX) == 0) {
      COL <- Col[3]
    }
    lines(c(0, L), rep(y, 2), col = COL)
    COL <- ifelse(i == dataY, Col[2], Col[3])
    if (length(dataY) == 0) {
      COL <- Col[3]
    }
    lines(c(0, 0), c(y, y + L), col = COL)
  }
  rect(0.4, 0, 1, 1, col = Col[4], border = Col[4])

  pMethods <- matrix(c(
    "scatterPlot", "boxPlot",
    "histogram", "barPlot",
    "mosaicPlot", "",
    "fitLinear", "fitNormal"
  ),
  ncol = 2,
  byrow = TRUE
  )
  graphics::text(mean(c(0.45, 0.9)), 0.95, "Plotting method")
  for (i in 0:3) {
    for (j in 0:1) {
      coord <- c(
        0.45 + j * 0.25,
        0.9 - i * 0.22,
        0.65 + j * 0.25,
        0.9 - 0.17 - i * 0.22
      )
      COL <- ifelse(pMethods[i + 1, j + 1] == plotMethod,
        Col[2],
        Col[3]
      )
      if (plotMethod == "fitLine" & i == 0 & j == 0) {
        COL <- Col[2]
      }
      if (plotMethod == "fitNormal" & i == 1 & j == 0) {
        COL <- Col[2]
      }
      makePlotIcon(coord, pMethods[i + 1, j + 1], COL)
    }
  }

  graphics::text(1, 1, "exit", cex = 0.9, col = Col[6])
  rect(0.94, 0.97, 1.06, 1.03, border = Col[6])
}


makePlotIcon <- function(coord, plotMethod, COL) {
  rect(coord[1], coord[2],
    coord[3], coord[4],
    col = "#FFFFFF",
    border = "#FFFFFF"
  )
  rect(coord[1], coord[2],
    coord[3], coord[4],
    border = COL
  )
  scaleX <- abs(coord[3] - coord[1])
  scaleY <- abs(coord[4] - coord[2])
  lowerX <- min(c(coord[1], coord[3]))
  lowerY <- min(c(coord[2], coord[4]))

  if (plotMethod == "scatterPlot") {
    x <- c(1:9, 5) / 10
    y <- c(
      0.212, 0.322, 0.37, 0.297, 0.369,
      0.48, 0.768, 0.637, 0.759, 0.467
    )
    graphics::points(x * scaleX + lowerX,
      y * scaleY + lowerY,
      pch = 20,
      cex = 0.5,
      col = COL
    )
  }

  if (plotMethod == "boxPlot") {
    pX <- lowerX + c(1.15, 2.85) * scaleX / 4 # - scaleX/12
    pY1 <- lowerY + scaleY * c(10, 19, 25, 37, 64, 82) / 100
    pY2 <- lowerY + scaleY * c(10, 25, 37, 54, 87) / 100
    graphics::rect(pX[1] - scaleX / 9, pY1[2],
      pX[1] + scaleX / 9, pY1[4],
      border = COL
    )
    graphics::rect(pX[2] - scaleX / 9, pY2[2],
      pX[2] + scaleX / 9, pY2[4],
      border = COL
    )
    graphics::lines(pX[1] + scaleX * c(-1, 1) / 9, rep(pY1[1], 2), col = COL)
    graphics::lines(pX[1] + scaleX * c(-1, 1) / 9, rep(pY1[3], 2), col = COL)
    graphics::lines(pX[1] + scaleX * c(-1, 1) / 9, rep(pY1[5], 2), col = COL)
    graphics::lines(pX[2] + scaleX * c(-1, 1) / 9, rep(pY2[1], 2), col = COL)
    graphics::lines(pX[2] + scaleX * c(-1, 1) / 9, rep(pY2[3], 2), col = COL)
    graphics::lines(pX[2] + scaleX * c(-1, 1) / 9, rep(pY2[5], 2), col = COL)
    graphics::lines(rep(pX[1], 2), pY1[c(1, 2)], col = COL)
    graphics::lines(rep(pX[1], 2), pY1[c(4, 5)], col = COL)
    graphics::lines(rep(pX[2], 2), pY2[c(1, 2)], col = COL)
    graphics::lines(rep(pX[2], 2), pY2[c(4, 5)], col = COL)
    graphics::points(pX[1], pY1[6], col = COL, pch = 20, cex = 0.5)
  }

  if (plotMethod == "histogram") {
    breaks <- seq(0.05, 0.95, 1 / 10) * scaleX + lowerX
    tmp <- c(5, 35, 80, 72, 55, 20, 8, 15, 3)
    heights <- tmp * scaleY / 100 + lowerY
    for (i in 2:length(breaks)) {
      rect(
        breaks[i - 1], lowerY + scaleY / 30,
        breaks[i], heights[i - 1] + scaleY / 30
      )
    }
  }

  if (plotMethod == "barPlot") {
    sX <- scaleX / 21
    sY <- scaleY / 21
    rect(lowerX + sX, lowerY + sY, lowerX + 5 * sX, lowerY + 9 * sY,
      col = COL
    )
    rect(lowerX + 6 * sX, lowerY + sY, lowerX + 10 * sX, lowerY + 18 * sY,
      col = COL
    )
    rect(lowerX + 11 * sX, lowerY + sY, lowerX + 15 * sX, lowerY + 2 * sY,
      col = COL
    )
    rect(lowerX + 16 * sX, lowerY + sY, lowerX + 20 * sX, lowerY + 5 * sY,
      col = COL
    )
  }

  if (plotMethod == "mosaicPlot") {
    C <- min(coord[c(1, 3)])
    C[2] <- min(coord[c(2, 4)])
    sX <- scaleX / 36
    sY <- scaleY / 37
    rect(C[1] + 2 * sX, C[2] + 2 * sY, C[1] + 7 * sX, C[2] + 16 * sY)
    rect(C[1] + 2 * sX, C[2] + 17 * sY, C[1] + 7 * sX, C[2] + 35 * sY)
    rect(C[1] + 8 * sX, C[2] + 2 * sY, C[1] + 23 * sX, C[2] + 6 * sY)
    rect(C[1] + 8 * sX, C[2] + 7 * sY, C[1] + 23 * sX, C[2] + 35 * sY)
    rect(C[1] + 24 * sX, C[2] + 2 * sY, C[1] + 34 * sX, C[2] + 11 * sY)
    rect(C[1] + 24 * sX, C[2] + 12 * sY, C[1] + 34 * sX, C[2] + 35 * sY)
  }

  if (plotMethod == "fitLinear") {
    x <- c(1:9, 5) / 10
    y <- c(
      0.212, 0.322, 0.37, 0.297, 0.369,
      0.48, 0.768, 0.637, 0.759, 0.467
    )
    graphics::points(x * scaleX + lowerX, y * scaleY + lowerY,
      pch = 20,
      cex = 0.5,
      col = COL
    )
    graphics::lines(
      c(lowerX, max(coord[c(1, 3)])),
      c(lowerY + scaleY / 8, lowerY + scaleY * 0.83)
    )
  }

  if (plotMethod == "fitNormal") {
    breaks <- seq(0.05, 0.95, 1 / 10) * scaleX + lowerX
    tmp <- c(5, 35, 80, 72, 55, 20, 8, 15, 3)
    heights <- tmp * scaleY / 100 + lowerY
    for (i in 2:length(breaks)) {
      rect(
        breaks[i - 1], lowerY + scaleY / 30,
        breaks[i], heights[i - 1] + scaleY / 30
      )
    }
    X <- seq(0, 1, 0.01)
    Y <- stats::dnorm(X, 0.4, 0.166) / 3.2
    lines(
      X * scaleX + lowerX,
      Y * scaleY + lowerY + scaleY / 40
    )
  }
}

# edaPlot(cdc)
