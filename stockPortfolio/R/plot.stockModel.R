`plot.stockModel` <-
function(x, xlab='Risk', addNames=FALSE, ylab='Return', main='Risk and Return of Stocks', pos=3, xlim="default", ylim="default", col=NULL, type='p', ...){
	if(is.null(col)[1]){
		if(!is.null(x$industry)[1]){
			col <- match(x$industry, unique(x$industry))
		} else {
			col <- 1
		}
	}
	if(xlim[1] == 'default'){
		R <- range(x$sigma)
		xlim <- c(R[1], R[2])+0.05*c(-1,1)*diff(R)
	}
	if(ylim[1] == 'default'){
		R    <- range(x$R)
		ylim <- c(R[1], R[2]+0.1*diff(R))
	}
	plot(x$sigma, x$R, xlab=xlab, ylab=ylab, main=main, xlim=xlim, ylim=ylim, col=col, type=type, ...)
	if(addNames){
		text(x$sigma, x$R, names(x$R), pos=pos, col=col)
	}
}

