
SeasonalChart <- function(
    dates, x,
    col.axis = "#00000044",
    ...) {
  par(mar = rep(0, 4))
  plot(c(-1, 1), c(-1, 1), type = "n", axes = FALSE, ...)
  lines(2 * c(-1, 1), rep(0, 2), col = col.axis)
  lines(rep(0, 2), 2 * c(-1, 1), col = col.axis)
  BuildCircle <- function(center, radius, theta) {
    if (missing(theta)) {
      theta <- rev(seq(pi / 2, 5 * pi / 2, length.out = 361))
    }
    lines(center[1] + radius * cos(theta),
          center[2] + radius * sin(theta),
          col = col.axis)
  }
  px <- pretty(x, n = 3)
  for (r in px) {
    BuildCircle(c(0, 0), r / max(px))
  }
  
  # _____ Identify and Customize for Context _____ #
  # Monthly
  if (all(grep("[0-9]{4}-[0-9]{1,2}", dates) == 1:length(x))) {
    split.dates <- as.numeric(substring(dates, 1, 4))
    split.var <- "year"
    month <- as.numeric(substring(dates, 6, 7))
    theta <- seq(5 * pi / 2, pi / 3, length.out = 12)[month]
  }
  
  # _____ Generate Plots _____ #
  radius <- by(x, split.dates, I)
  for (x in 1:length(radius)) {
    BuildCircle(c(0, 0), x / max(px), theta)
  }
}


# dates <- c("2010-07", "2010-08", "2010-09", "2010-10", "2010-11", "2010-12", "2011-01", "2011-02", "2011-03", "2011-04", "2011-05", "2011-06", "2011-07", "2011-08", "2011-09", "2011-10", "2011-11", "2011-12", "2012-01", "2012-02", "2012-03", "2012-04", "2012-05", "2012-06", "2012-07", "2012-08", "2012-09", "2012-10", "2012-11", "2012-12", "2013-01", "2013-02", "2013-03", "2013-04", "2013-05", "2013-06", "2013-07", "2013-08", "2013-09", "2013-10", "2013-11", "2013-12", "2014-01", "2014-02", "2014-03", "2014-04", "2014-05", "2014-06", "2014-07", "2014-08", "2014-09", "2014-10", "2014-11", "2014-12", "2015-01")
# x <- c(2, 35, 28, 4, 11, 4, 189, 85, 19, 5, 5, 3, 8, 84, 121, 15, 11, 20, 196, 17, 8, 18, 12, 11, 126, 216, 112, 38, 13, 119, 225, 81, 79, 84, 59, 34, 52, 419, 252, 66, 52, 83, 674, 521, 249, 166, 212, 152, 223, 1151, 979, 298, 331, 465, 1246)
# SeasonalChart(dates, x)
