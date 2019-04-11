#' @export
myPNG <- function (fileName,
                   width = 600,
                   height = 400,
                   mar = c(3.9, 3.9, 1, 1),
                   mgp = c(2.8, 0.55, 0),
                   las = 1,
                   tcl = -0.3,
                   ...) {
  grDevices::png(fileName, width, height)
  graphics::par(mar = mar, mgp = mgp, las = las, tcl = tcl, ...)
}
