#' Custom PDF function
#'
#' A similar function to \code{pdf} and \code{png}, except that different
#' defaults are provided, including for the plotting parameters.
#'
#'
#' @aliases myPDF myPNG
#' @param fileName File name for the image to be output. The name should end in
#' \code{.pdf}.
#' @param width The width of the image file (inches). Default: \code{5}.
#' @param height The height of the image file (inches). Default: \code{3}.
#' @param mar Plotting margins. To change, input a numerical vector of length
#' 4.
#' @param mgp Margin graphing parameters. To change, input a numerical vector
#' of length 3. The first argument specifies where x and y labels are placed;
#' the second specifies the axis labels are placed; and the third specifies how
#' far to pull the entire axis from the plot.
#' @param las Orientation of axis labels. Input \code{0} for the default.
#' @param tcl The tick mark length as a proportion of text height. The default
#' is \code{-0.5}.
#' @param \dots Additional arguments to \code{par}.
#' @author David Diez
#' @seealso \code{\link{edaPlot}}
#' @keywords PDF Plotting Save Graphics myPDF
#' @export
#' @examples
#'
#' # save a plot to a PDF
#' # myPDF("myPlot.pdf")
#' histPlot(mariokart$total_pr)
#' # dev.off()
#'
#' # save a plot to a PNG
#' # myPNG("myPlot.png")
#' histPlot(mariokart$total_pr)
#' # dev.off()
#'
myPDF <- function(fileName,
                  width = 5,
                  height = 3,
                  mar = c(3.9, 3.9, 1, 1),
                  mgp = c(2.8, 0.55, 0),
                  las = 1,
                  tcl = -0.3,
                  ...){
  grDevices::pdf(fileName, width, height)
  graphics::par(mar=mar, mgp=mgp, las=las, tcl=tcl, ...)
}
