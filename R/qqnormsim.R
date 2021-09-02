#' Generate simulated QQ plots
#'
#' Create a 3 x 3 grid of quantile-quantile plots, the first of which corresponds
#' to the input data. The other eight plots arise from simulating random normal
#' data with the same mean, standard deviation, and length as the data. For use
#' in comparing known-normal qqplots to an observed qqplot to assess normality.
#'
#' @param sample the variable to be plotted.
#' @param data data frame to use.
#'
#' @importFrom ggplot2 ggplot
#' @importFrom stats rnorm sd
#' @return A 3 x 3 grid of qqplots.
#' @export
qqnormsim <- function(sample, data) {
  y <- eval(substitute(sample), data)
  simnorm <- stats::rnorm(
    n = length(y) * 8, mean = mean(y),
    sd = stats::sd(y)
  )
  df <- data.frame(
    x = c(y, simnorm),
    plotnum = rep(c(
      "data", "sim 1", "sim 2",
      "sim 3", "sim 4", "sim 5",
      "sim 6", "sim 7", "sim 8"
    ),
    each = length(y)
    )
  )
  ggplot2::ggplot(data = df, ggplot2::aes_string(sample = "x")) +
    ggplot2::stat_qq() +
    ggplot2::facet_wrap(~plotnum)
}
