# Much of what's here is built based on
# https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2

#' Function to extract OpenIntro IMS colors as hex codes
#'
#' Uses full colors from [IMSCOL]
#'
#' @param ... Character names of [openintro_colors]
#' @export
#' @examples
#'
#' openintro_cols("blue")
#' openintro_cols("red")
#'
openintro_cols <- function(...) {

  cols <- c(...)

  if (is.null(cols))
    return (openintro::openintro_colors)

  openintro::openintro_colors[cols]
}

#' Return function to interpolate an OpenIntro IMS color palette
#'
#' Not exported
#'
#' @param palette Character name of palette in [openintro_palettes]
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to [grDevices::colorRampPalette()]
#' @importFrom grDevices colorRampPalette
#'
openintro_pal <- function(palette = "main", reverse = FALSE, ...) {

  pal <- openintro::openintro_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)
}

#' Color scale constructor for OpenIntro IMS colors
#'
#' @param palette Character name of palette in [openintro_palettes]
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to [ggplot2::discrete_scale()] or
#'            [ggplot2::scale_color_gradientn()], used respectively when discrete is TRUE or FALSE
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn
#' @export
#' @examples
#'
#' library(ggplot2)
#'
#' # Categorical variable with three levels
#' ggplot(evals, aes(x = bty_avg, y = score,
#'                       color = rank, shape = rank)) +
#'   geom_jitter(size = 2, alpha = 0.6) +
#'   scale_color_openintro("three")
#'
#' # Categorical variable with two levels
#' ggplot(evals, aes(x = bty_avg, y = score,
#'                   color = language, shape = language)) +
#'   geom_jitter(size = 2, alpha = 0.6) +
#'   scale_color_openintro("two")
#'
#' # Continuous variable
#' # Generates a palette, but not recommended
#' ggplot(evals, aes(x = bty_avg, y = score,
#'                   color = score)) +
#'   geom_jitter(size = 2, alpha = 0.8) +
#'   scale_color_openintro(discrete = FALSE)
#'
#' # For continous palettes
#' # use scale_color_gradient instead
#' ggplot(evals, aes(x = bty_avg, y = score,
#'                   color = score)) +
#'   geom_jitter(size = 2) +
#'   scale_color_gradient(low = IMSCOL["blue", "full"], high = IMSCOL["blue", "f6"])
#'
#' ggplot(evals, aes(x = bty_avg, y = score,
#'                   color = cls_perc_eval)) +
#'   geom_jitter(size = 2) +
#'   scale_color_gradient(low = COL["red", "full"], high = COL["red", "f8"])
#'
scale_color_openintro <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- openintro_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("colour", paste0("openintro_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}

#' Fill scale constructor for OpenIntro IMS colors
#'
#' @param palette Character name of palette in [openintro_palettes]
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to [ggplot2::discrete_scale()] or
#'            [ggplot2::scale_fill_gradientn()], used respectively when discrete is TRUE or FALSE
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn
#' @export
#' @examples
#'
#' library(ggplot2)
#' library(dplyr)
#'
#' # Categorical variable with two levels
#' ggplot(evals, aes(x = ethnicity, fill = ethnicity)) +
#'   geom_bar() +
#'   scale_fill_openintro("two")
#'
#' # Categorical variable with three levels
#' ggplot(evals, aes(x = rank, fill = rank)) +
#'   geom_bar() +
#'   scale_fill_openintro("three")
#'
#' # Continuous variable with levels
#' # Generates a palette, but may not be the best palette
#' # in terms of color-blind and grayscale friendliness
#' ggplot(diamonds, aes(x = clarity, fill = clarity)) +
#'   geom_bar() +
#'   scale_fill_openintro()
#'
#' # For continuous palettes
#' # use scale_color_gradient instead
#' ggplot(evals, aes(x = bty_avg, y = score,
#'                   color = score)) +
#'   geom_jitter(size = 2) +
#'   scale_color_gradient(low = IMSCOL["blue", "full"], high = IMSCOL["blue", "f6"])
#'
#' ggplot(evals, aes(x = bty_avg, y = score,
#'                   color = cls_perc_eval)) +
#'   geom_jitter(size = 2) +
#'   scale_color_gradient(low = IMSCOL["green", "full"], high = IMSCOL["green", "f6"])
#'
scale_fill_openintro <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- openintro_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("openintro_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}
