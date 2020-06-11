#' Axis function substitute
#'
#' The function \code{buildAxis} is built to provide more control of the number
#' of labels on the axis. This function is still under development.
#'
#' The primary reason behind building this function was to allow a plot to be
#' created with similar features but with different data sets. For instance, if
#' a set of code was written for one data set and the function \code{axis} had
#' been utilized with pre-specified values, the axis may not match the plot of
#' a new set of data. The function \code{buildAxis} addresses this problem by
#' allowing the number of axis labels to be specified and controlled.
#'
#' The axis is built by assigning penalties to a variety of potential axis
#' setups, ranking them based on these penalties and then selecting the axis
#' with the best score.
#'
#' @param side The side of the plot where to add the axis.
#' @param limits Either lower and upper limits on the axis or a data set.
#' @param n The preferred number of axis labels.
#' @param nMin The minimum number of axis labels.
#' @param nMax The maximum number of axis labels.
#' @param extend How far the axis may extend beyond \code{range(limits)}.
#' @param eps The smallest increment allowed.
#' @param \dots Arguments passed to \code{axis}
#' @return A vector of the axis plotted.
#' @author David Diez
#' @seealso \code{\link{histPlot}}, \code{\link{dotPlot}},
#' \code{\link{boxPlot}}, \code{\link{densityPlot}}
#' @keywords control axis axis customize axis
#' @export
#' @examples
#'
#' #===> 0 <===#
#' limits <- rnorm(100, 605490, 10)
#' hist(limits, axes=FALSE)
#' buildAxis(1, limits, 2, nMax=4)
#'
#' #===> 1 <===#
#' x <- seq(0, 500, 10)
#' y <- 8*x+rnorm(length(x), mean=6000, sd=200)
#' plot(x, y, axes=FALSE)
#' buildAxis(1, limits=x, n=5)
#' buildAxis(2, limits=y, n=3)
#'
#' #===> 2 <===#
#' x <- 9528412 + seq(0, 200, 10)
#' y <- 8*x+rnorm(length(x), mean=6000, sd=200)
#' plot(x, y, axes=FALSE)
#' temp <- buildAxis(1, limits=x, n=4)
#' buildAxis(2, y, 3)
#'
#' #===> 3 <===#
#' x <- seq(367, 1251, 10)
#' y <- 7.5*x+rnorm(length(x), mean=6000, sd=800)
#' plot(x, y, axes=FALSE)
#' buildAxis(1, limits=x, n=4, nMin=3, nMax=3)
#' buildAxis(2, limits=y, n=4, nMin=3, nMax=5)
#'
#' #===> 4 <===#
#' x <- seq(367, 367.1, 0.001)
#' y <- 7.5*x+rnorm(length(x), mean=6000, sd=0.01)
#' plot(x, y, axes=FALSE)
#' buildAxis(1, limits=x, n=4, nMin=5, nMax=6)
#' buildAxis(2, limits=y, n=2, nMin=3, nMax=4)
#'
#' #===> 5 <===#
#' x <- seq(-0.05, -0.003, 0.0001)
#' y <- 50 + 20*x + rnorm(length(x), sd=0.1)
#' plot(x, y, axes=FALSE)
#' buildAxis(1, limits=x, n=4, nMin=5, nMax=6)
#' buildAxis(2, limits=y, n=4, nMax=5)
#' abline(lm(y ~ x))
#'
#' #===> 6 <===#
#' x <- seq(-0.0097, -0.008, 0.0001)
#' y <- 50 + 20*x + rnorm(length(x), sd=0.1)
#' plot(x, y, axes=FALSE)
#' buildAxis(1, limits=x, n=4, nMin=2, nMax=5)
#' buildAxis(2, limits=y, n=4, nMax=5)
#' abline(lm(y ~ x))
#'
#' #===> 7 <===#
#' x <- seq(0.03, -0.003099, -0.00001)
#' y <- 50 + 20*x + rnorm(length(x), sd=0.1)
#' plot(x, y, axes=FALSE)
#' buildAxis(1, limits=x, n=4, nMin=2, nMax=5)
#' buildAxis(2, limits=y, n=4, nMax=6)
#' abline(lm(y ~ x))
#'
#' #===> 8 - repeat <===#
#' m <- runif(1)/runif(1) +
#' 	rgamma(1, runif(1)/runif(1), runif(1)/runif(1))
#' s <- rgamma(1, runif(1)/runif(1), runif(1)/runif(1))
#' x <- rnorm(50, m, s)
#' hist(x, axes=FALSE)
#' buildAxis(1, limits=x, n=5, nMin=4, nMax=6, eps=10^-12)
#' if(diff(range(x)) < 10^-12){
#' 	cat("too small\n")
#' }
#'
#'
buildAxis <- function(side, limits, n, nMin = 2, nMax = 10, extend = 2, eps = 10^-12, ...) {
  if (!all(is.finite(limits))) {
    stop("Must provide finite limits.\n")
  }
  limits <- range(limits)
  if (limits[1] == limits[2]) {
    stop('Range of "limits" is too small. Scale the data.\n')
  }

  L <- limits
  l <- L + c(-1, 1) * diff(L) * extend
  s <- sign(l)
  l10 <- round(log10(abs(l)))
  d <- diff(l)
  d10 <- round(log10(d))

  L1 <- L
  temp <- round(L1[1] / 10^(d10))
  L <- L1 - 10^(d10) * temp
  Lup <- temp * 10^(d10)
  l1 <- l
  # 	temp <- round(l1[1]/10^(d10))
  l <- l1 - 10^(d10) * temp
  lup <- temp * 10^(d10)

  si <- list()
  si[[1]] <- seq(-6, 5, 0.01) / 10
  si[[2]] <- seq(-6, 5, 0.015) / 10
  si[[3]] <- seq(-6, 5, 0.02) / 10
  si[[4]] <- seq(-6, 5, 0.025) / 10
  si[[5]] <- seq(-6, 5, 0.03) / 10

  si[[6]] <- seq(-6, 5, 0.04) / 10
  si[[7]] <- seq(-6, 5, 0.05) / 10
  si[[8]] <- seq(-6, 5, 0.06) / 10
  si[[9]] <- seq(-7, 5, 0.07) / 10
  si[[10]] <- seq(-6, 5, 0.08) / 10

  AES <- c(
    8, 0, 7, 5, 3,
    4, 7, 2, 1, 2
  )
  for (i in 0:2) {
    for (j in 1:10) {
      temp <- round(10000 * si[[j]] * 10^i) / 10000
      si[[i * 10 + j]] <- temp
      AES[i * 10 + j] <- AES[j]
    }
  }

  if (0 >= L[1] && 0 <= L[2]) {
    start <- 0
  } else {
    start <- -10^max(round(log10(abs(L)) + 0.5))
    go <- rep(TRUE, 2)
    temp <- 10^max(round(log10(abs(L)) - 0.5))
    while (all(go)) {
      go <- FALSE
      if (start < L[1]) {
        start <- start + temp
        go <- TRUE
      }
    }
  }

  br <- list()
  se <- list()
  ss <- list()
  le <- c()
  for (i in 1:length(si)) {
    br[[i]] <- si[[i]] * 10^d10
    se[[i]] <- start + br[[i]]
    these <- (se[[i]] <= l[2] + eps) &
      (se[[i]] >= l[1] - eps)
    ss[[i]] <- se[[i]][these]
    these <- (se[[i]] <= L[2] + eps) &
      (se[[i]] >= L[1] - eps)
    le[i] <- sum(these)
    ss[[i]] <- ss[[i]] + Lup
  }
  L <- L1
  l <- l1

  these <- which(le >= nMin & le <= nMax)
  aes <- c()
  for (i in these) {
    min((ss[[i]][ss[[i]] > L[1]] - L[1]) / d)
    min((L[1] - ss[[i]][ss[[i]] < L[1]]) / d)
    abs(n - le[[i]])
    temp <- ss[[i]][ss[[i]] > L[1]] - L[1]
    temp1 <- -log(max(c(0.01, min(temp / d))), 5)
    temp <- L[1] - ss[[i]][ss[[i]] < L[1]]
    temp2 <- -log(max(c(0.01, min(temp / d))), 5)
    temp3 <- -abs(le[i] - n)^2 / (n + 1)
    AES[i] <- AES[i] + temp1 + temp2 + temp3
  }
  select <- which.max(AES[these])[1]

  l <- ss[[these[select]]]

  temp <- -round(log10(eps))
  l <- (round(l * 10^temp)) * 10^(-temp)
  axis(side, at = l, ...)
  invisible(l)
}
