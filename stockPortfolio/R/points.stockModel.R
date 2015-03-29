`points.stockModel` <-
function(x, type='p', addNames=FALSE, pos=3, col=NULL, ...){
	if(is.null(col)[1]){
		if(!is.null(x$industry)[1]){
			col <- match(x$industry, unique(x$industry))
		} else {
			col <- 1
		}
	}
	points(x$sigma, x$R, col=col, type=type, ...)
	if(addNames){
		text(x$sigma, x$R, names(x$R), pos=pos, col=col)
	}
}

