#' Fade colors
#'
#' Fade colors so they are transparent.
#'
#'
#' @param col An integer, color name, or RGB hexadecimal.
#' @param fade The amount to fade \code{col}. This value should be a character
#' in hexadecimal from '00' to 'FF'. The smaller the value, the greater the
#' fading.
#' @author David Diez
#' @export
#' @examples
#'
#' data(mariokart)
#' new  <- mariokart$cond == 'new'
#' used <- mariokart$cond == 'used'
#'
#' #===> color numbers <===#
#' dotPlot(mariokart$total_pr[new], ylim=c(0,3), xlim=c(25, 80), pch=20,
#' 	col=2, cex=2, main='using regular colors')
#' dotPlot(mariokart$total_pr[used], at=2, add=TRUE, col=4, pch=20, cex=2)
#' dotPlot(mariokart$total_pr[new], ylim=c(0,3), xlim=c(25, 80),
#' 	col=fadeColor(2, '22'), pch=20, cex=2,
#' 	main='fading the colors first')
#' dotPlot(mariokart$total_pr[used], at=2, add=TRUE,
#' 	col=fadeColor(4, '22'), pch=20, cex=2)
#'
#' #===> color names <===#
#' dotPlot(mariokart$total_pr[new], ylim=c(0,3), xlim=c(25, 80), pch=20,
#' 	col='red', cex=2, main='using regular colors')
#' dotPlot(mariokart$total_pr[used], at=2, add=TRUE, col='blue', pch=20, cex=2)
#' dotPlot(mariokart$total_pr[new], ylim=c(0,3), xlim=c(25, 80),
#' 	col=fadeColor('red', '22'), pch=20, cex=2,
#' 	main='fading the colors first')
#' dotPlot(mariokart$total_pr[used], at=2, add=TRUE,
#' 	col=fadeColor('blue', '22'), pch=20, cex=2)
#'
#' #===> hexadecimal <===#
#' dotPlot(mariokart$total_pr[new], ylim=c(0,3), xlim=c(25, 80), pch=20,
#' 	col='#FF0000', cex=2, main='using regular colors')
#' dotPlot(mariokart$total_pr[used], at=2, add=TRUE, col='#0000FF', pch=20,
#' 	cex=2)
#' dotPlot(mariokart$total_pr[new], ylim=c(0,3), xlim=c(25, 80),
#' 	col=fadeColor('#FF0000', '22'), pch=20, cex=2,
#' 	main='fading the colors first')
#' dotPlot(mariokart$total_pr[used], at=2, add=TRUE,
#' 	col=fadeColor('#0000FF', '22'), pch=20, cex=2)
#'
#' #===> alternative: rgb function <===#
#' dotPlot(mariokart$total_pr[new], ylim=c(0,3), xlim=c(25, 80), pch=20,
#' 	col=rgb(1,0,0), cex=2, main='using regular colors')
#' dotPlot(mariokart$total_pr[used], at=2, add=TRUE, col=rgb(0,0,1),
#' 	pch=20, cex=2)
#' dotPlot(mariokart$total_pr[new], ylim=c(0,3), xlim=c(25, 80),
#' 	col=rgb(1,0,0,1/8), pch=20, cex=2,
#' 	main='fading the colors first')
#' dotPlot(mariokart$total_pr[used], at=2, add=TRUE,
#' 	col=rgb(0,0,1,1/8), pch=20, cex=2)
#'
fadeColor <- function(col, fade = 'FF') {
  if (is.numeric(col)[1]) {
    col <- round(col)
    COL <- col
    COL[col %% 8 == 0] <- '#BBBBBB'
    COL[col %% 8 == 1] <- '#000000'
    COL[col %% 8 == 2] <- '#BB0000'
    COL[col %% 8 == 3] <- '#00FF00'
    COL[col %% 8 == 4] <- '#0000FF'
    COL[col %% 8 == 5] <- '#00FFFF'
    COL[col %% 8 == 6] <- '#FF00FF'
    COL[col %% 8 == 7] <- '#FFFF00'
    col <- COL
  } else if (substr(col[1], 1, 1) != '#') {
    temp <- grDevices::col2rgb(col[1])
    col <- grDevices::rgb(temp[1], temp[2], temp[3], maxColorValue = 255)
  }
  # check fading
  if (any(nchar(col[1]) != 7)) {
    stop('col must be either an integer or in #RRGGBB format\n')
  }
  if (any(nchar(fade[1]) != 2)) {
    stop('fade must be a hexadecimal string of 2 characters\n')
  }
  col <- paste(col, fade, sep = '')
  return(col)
}
