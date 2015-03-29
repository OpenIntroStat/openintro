`plot.stockReturns` <-
function(x, lty=NULL, col=NULL,
lwd=NULL, ylim=NULL, xlab='Time', ylab='Value', legend=TRUE, type='l', ...){
	n <- dim(x$R)
	if(is.null(ylim)[1]){
		ylim <- range(apply(1+x$R[n[1]:1,,drop=FALSE], 2, cumprod))
	}
	if(is.null(lty)){
		lty <- 1:n[2]
	} else if(length(lty) < n[2]){
		lty <- rep(lty, n[2])
	}
	if(is.null(lwd)){
		lwd <- rep(1, n[2])
	} else if(length(lwd) < n[2]){
		lwd <- rep(lwd, n[2])
	}
	if(is.null(col)){
		col <- 1:n[2]
	} else if(length(col) < n[2]){
		col <- rep(col, n[2])
	}
	X <- rev(as.Date(row.names(x$R)))
	plot(X, cumprod(1+rev(x$R[,1])), ylim=ylim, ylab=ylab, col=col[1],
		lty=lty[1], lwd=lwd[1], xlab=xlab, type=type, ...)
	if(n[2] > 1 & type != 'n'){
		for(i in 2:n[2]){
			lines(X, cumprod(1+rev(x$R[,i])), col=col[i], lty=lty[i], lwd=lwd[i], type=type)
		}
	}
	if(legend){
		legend('topleft', col=col[1:n[2]], lty=lty[1:n[2]],
			lwd=lwd[1:n[2]], legend=x$ticker)
	}
}

