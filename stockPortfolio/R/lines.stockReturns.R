`lines.stockReturns` <-
function(x, keep='all', col=NULL, lty=NULL, ...){
	if(keep == 'all'){
		keep <- 1:dim(x$R)[2]
	}
	if(is.null(col)[1]){
		col <- keep
	} else if(length(col) < max(keep)){
		col <- rep(col, max(keep))
	}
	if(is.null(lty)[1]){
		lty <- keep
	} else if(length(lty) < max(keep)){
		lty <- rep(lty, max(keep))
	}
	n <- dim(x$R)[1]
	for(i in keep){
		lines(1:n, cumprod(rev(1+x$R[,i])), col=col[i], lty=lty[i], ...)
	}
}

